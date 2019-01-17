# SysArgs

[project]:https://github.com/mazzy-ax/SysArgs
[license]:https://github.com/mazzy-ax/SysArgs/blob/master/LICENSE

[SysArgs][project] &ndash; это набор методов на языке X++ для класса SysArgs в [Microsoft Dynamics AX 2009](ax2009), [Microsoft Dynamics AX 2012](ax2012) и [Axapta 4.0](ax4).

* [Get методы](https://github.com/mazzy-ax/SysArgs/wiki/Get-methods) возвращают требуемое значение или бросают исключение
* [Check методы](https://github.com/mazzy-ax/SysArgs/wiki/Check-methods) возвращают `boolean`, не бросают исключений
* [Assert методы](https://github.com/mazzy-ax/SysArgs/wiki/Assert-methods) ничего не возвращают. Бросают исключение, если args не инициализирован или в аргументах не подходящие параметры. Статические методы.
* [Ensure методы](https://github.com/mazzy-ax/SysArgs/wiki/Ensure-methods) возвращают исходный args. Бросают исключение, если в аргументах не подходящие параметры. Методы объекта. Особенно удобны в ax2012 при инициализации переменных.

Подробнее в [wiki](https://github.com/mazzy-ax/SysArgs/wiki) проекта.

## Пример 1

Стало:

```java
reqTrans = SysArgs::getRecord(args, reqTrans.TableId);
```

Вместо:

```java
if (args.dataset() == tablenum(ReqTrans) && args.record().RecId)
    reqTrans = args.record();
else
    throw error(Error::missingFormActiveBuffer(element.name()));
```

## Пример 2

Стало:

```java
SysArgs::assertCallerType(args, classnum(FormRun)); // пропустит дальше, только если вызвали из формы. Иначе бросит исключение.
if( SysArgs::checkRecord(args, tablenum(ProdTable)) )
{
    ...
```

Вместо:

```java
if (args && args.caller() && args.dataset() == tablenum(ProdTable) && args.record().RecId)
{
    // проверили, что есть вызвавший класс. нет проверки, что вызвали именно из формы
    ...
```

## Пример 3 для ax2012

Стало:

```java
public static void main(Args args)
{
    ProdTable prod = args.ensureCallerType(classnum(FormRun)).getRecord(tablenum(ProdTable));
    ...
```

Вместо:

```java
public static void main(Args args)
{
    ProdTable prod;

    if (args && args.caller() && args.dataset() == tablenum(ProdTable) && args.record().RecId)
    {
        prod = callerForm.args().record();
        ...
```

## Благодарности

Спасибо Роману Долгополову (RDOL, [db](https://axforum.info/forums/member.php?u=2836)), его код лежит в основе данного проекта.

## ChangeLog

* [CHANGELOG.md](CHANGELOG.md)
* <https://github.com/mazzy-ax/SysArgs/releases>

## Помощь проекту

Буду признателен за ваши замечания, предложения и советы по проекту как в разделе [Issues](https://github.com/mazzy-ax/SysEnumerators/issues), так и в виде письма на адрес <mazzy@mazzy.ru>

Мазуркин Сергей (mazzy)
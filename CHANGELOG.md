# SysArgs Changelog

see also [Releases on GitHub](https://github.com/mazzy-ax/SysArgs/releases)

[check-methods]:https://github.com/mazzy-ax/SysArgs/wiki/Check-methods
[ensure-methods]:https://github.com/mazzy-ax/SysArgs/wiki/Ensure-methods
[assert-methods]:https://github.com/mazzy-ax/SysArgs/wiki/Assert-methods

## CRLF в .xpo-файлах - 2020-03-02

В git-репозитории обновлены .xpo-файлы. Теперь они содержат `CRLF`, а не `LF`.
Это изменение сделано для тех, кто не пользуется командой `git clone`, а выкачивает и распаковывает .zip-архив из git-репозитория

## [0.3.0](https://github.com/mazzy-ax/SysArgs/compare/v0.2.0...v0.3.0) - 2019-12-29

* добавлены методы:
  * checkEnum, ensureEnum, assertEnum - значение Enum
  * checkParm, ensureParm, assertParm - значение текстового параметра
  * checkRecordTableIds, ensureRecordTableIds, assertRecordTableIds - соответствие одной из нескольких таблиц
  * checkFormDatasource - в дополнение к уже существующим ensureFormDatasource и assertFormDatasource
* добавлены юнит-тесты
* исправлено:
  * ensureFormDatasource и assertFormDatasource работают корректно, даже если в вызывающем датасорсе нет ни одной записи
  * ссылка на проект SysArgs в комментариях методов для ax2012

## [0.2.0](https://github.com/mazzy-ax/SysArgs/compare/v0.1.0...v0.2.0) - 2019-01-16

### Добавлено

* добавлены [ensure-методы][Ensure-methods]:
  * ensureCallerFormName
  * ensureCallerType
  * ensureEnumType
  * ensureFormDatasource
  * ensureRecord
  * ensureRecordExists
* добавлено значение по умолчанию для параметра TableId в методах assertRecord, assertRecordExists, checkRecord, checkRecordExists
* добавлен метод main() в класс SysArgsTest, чтобы быстро запускать тесты, не открывая панель модуля Unit Test

### Изменено

* для ax2012 get*, check* и ensure* методы сделаны методами объекта Args, а не статичными методами класса Args
* изменено название метода assertRecord на assertRecordExists
* изменено название метода assertTable на assertRecord
* изменено название метода checkRecord на checkRecordExists
* изменено название метода checkTable на checkRecord
* изменен текст ошибки в методах assertRecord и assertRecordExists
* исправлена ошибка в методе getMarkedRecIds(): в выборку попадали не только отмеченные пользователем записи, а все из датасорса формы
* исправлена ошибка в тестовом методе SysArgsTest.testAssertRecord()

## 0.1.0 - 2019-01-13

* Initial release

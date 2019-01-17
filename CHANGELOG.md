# SysArgs Changelog

see also [Releases on GitHub](https://github.com/mazzy-ax/SysArgs/releases)

## [0.2.0](https://github.com/mazzy-ax/SysArgs/compare/v0.1.0...v0.2.0) - 2019-01-16

### Добавлено

* добавлены [ensure-методы](https://github.com/mazzy-ax/SysArgs/wiki/Ensure-methods):
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
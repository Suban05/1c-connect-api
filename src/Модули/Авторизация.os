&Дуб
Процедура ПриСозданииОбъекта()
	
КонецПроцедуры

&Завязь(Тип = "Строка")
Функция Пользователь() Экспорт
	Возврат Получить("CONNECT_API_LOGIN");
КонецФункции	

&Завязь(Тип = "Строка")
Функция Пароль() Экспорт
	Возврат Получить("CONNECT_API_PASSWORD");
КонецФункции	

Процедура ВыполнитьПроверкуЗаполнения(Значение, ПеременнаяСреды)
	Сообщение = "Не заполнена переменная среды %1";
	Если Не ЗначениеЗаполнено(Значение) Тогда
		ВызватьИсключение(СтрШаблон(Сообщение, ПеременнаяСреды))
	КонецЕсли;
КонецПроцедуры

Функция Получить(ПеременнаяСреды)
	Значение = ПолучитьПеременнуюСреды(ПеременнаяСреды);
	ВыполнитьПроверкуЗаполнения(Значение, ПеременнаяСреды);
	Возврат Значение;
КонецФункции
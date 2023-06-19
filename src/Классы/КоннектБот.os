#Использовать "../internal"
#Использовать 1connector
#Использовать json

#Область ОписаниеПеременных

Перем _ПостроительМетода;
Перем _ПарсерJSON;
Перем _Пользователь;
Перем _Пароль;
Перем _Url;

#КонецОбласти

#Область ПрограммныйИнтерфейс

&Поле(Сеттер = "ТипПодписки", Идентификатор = "type")
&Поле(Сеттер = "Вебхук", Идентификатор = "url")
&Поле(Сеттер = "ИдОбъекта", Идентификатор = "id")
&Метод(Url = "/v1/hook/", ТипЗапроса = "Post")
Функция ПодписатьсяНаСобытия() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("ПодписатьсяНаСобытия");
КонецФункции

&Метод(Url = "/v1/hook/", ТипЗапроса = "Delete")
Функция ОтписатьсяОтВсехСобытий() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("ПодписатьсяНаСобытия");
КонецФункции

&Поле(Сеттер = "ТипПодписки", Идентификатор = "type")
&Поле(Сеттер = "ИдОбъекта", Идентификатор = "id")
&Метод(Url = "/v1/hook/", ТипЗапроса = "Delete")
Функция ОтписатьсяОтСобытийКонкретнойЛинии() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("ПодписатьсяНаСобытия");
КонецФункции

&Поле(Сеттер = "ИдЛинииПоддержки", Идентификатор = "line_id")
&Поле(Сеттер = "ИдПользователя", Идентификатор = "user_id")
&Метод(Url = "/v1/line/appoint/start/", ТипЗапроса = "Post")
Функция НазначитьСвободногоСпециалиста() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("НазначитьСвободногоСпециалиста");
КонецФункции

&Поле(Сеттер = "ИдЛинииПоддержки", Идентификатор = "line_id")
&Поле(Сеттер = "ИдПользователя", Идентификатор = "user_id")
&Поле(Сеттер = "ИдСпециалиста", Идентификатор = "spec_id")
&Поле(Сеттер = "ИдАвтора", Идентификатор = "author_id")
&Метод(Url = "/v1/line/appoint/spec/", ТипЗапроса = "Post")
Функция НазначитьКонкретногоСпециалиста() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("НазначитьКонкретногоСпециалиста");
КонецФункции

&Поле(Сеттер = "ИдЛинииПоддержки", Идентификатор = "line_id")
&Поле(Сеттер = "ИдПользователя", Идентификатор = "user_id")
&Поле(Сеттер = "ИдАвтора", Идентификатор = "author_id")
&Метод(Url = "/v1/line/drop/treatment/", ТипЗапроса = "Post")
Функция ЗакрытьОбращение() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("ЗакрытьОбращение");
КонецФункции

&Поле(Сеттер = "ИдЛинииПоддержки", Идентификатор = "line_id")
&Поле(Сеттер = "ИдПользователя", Идентификатор = "user_id")
&Метод(Url = "/v1/line/drop/keyboard/", ТипЗапроса = "Post")
Функция СкрытьБотМеню() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("СкрытьБотМеню");
КонецФункции

&Поле(Сеттер = "ИдЛинииПоддержки", Идентификатор = "line_id")
&Поле(Сеттер = "ИдПользователя", Идентификатор = "user_id")
&Поле(Сеттер = "ИдАвтора", Идентификатор = "author_id")
&Поле(Сеттер = "Текст", Идентификатор = "text")
&Поле(Сеттер = "БотКакСпециалист", Идентификатор = "bot_as_spec")
&Поле(Сеттер = "Клавиатура", Идентификатор = "keyboard")
&Метод(Url = "/v1/line/send/message/", ТипЗапроса = "Post")
Функция ОтправитьСообщениеПоЛинииПоддержки() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("ОтправитьСообщениеПоЛинииПоддержки");
КонецФункции

&Поле(Сеттер = "ИдПолучателя", Идентификатор = "recepient_id")
&Поле(Сеттер = "ИдАвтора", Идентификатор = "author_id")
&Поле(Сеттер = "Текст", Идентификатор = "text")
&Метод(Url = "/v1/colleague/send/message/", ТипЗапроса = "Post")
Функция ОтправитьСообщениеСотрудникуКомпании() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("ОтправитьСообщениеСотрудникуКомпании");
КонецФункции

&Поле(Сеттер = "ИдГруппы", Идентификатор = "conference_id")
&Поле(Сеттер = "ИдАвтора", Идентификатор = "author_id")
&Поле(Сеттер = "Текст", Идентификатор = "text")
&Метод(Url = "/v1/conference/send/message/", ТипЗапроса = "Post")
Функция ОтправитьСообщениеВГруппу() Экспорт
	Возврат _ПостроительМетода.ПостроитьМетод("ОтправитьСообщениеВГруппу");
КонецФункции

Функция Вызвать(Команда, Параметры, ТипЗапроса) Экспорт

	Метод = СтрШаблон("%1%2", _Url, Команда);
	ТелоЗапроса = _ПарсерJSON.ЗаписатьJSON(Параметры);
	ПараметрыЗапроса = ПараметрыHttpКоннектора();
	ПараметрыЗапроса.Аутентификация.Пользователь = _Пользователь;
	ПараметрыЗапроса.Аутентификация.Пароль = _Пароль;
	Ответ = КоннекторHttp.Post(
		Метод,
		ТелоЗапроса,,
		ПараметрыЗапроса
	);
	Возврат Ответ;

КонецФункции

Процедура УстановитьUrl(Url) Экспорт
	_Url = Url;
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытий

&Желудь
Процедура ПриСозданииОбъекта(&Пластилин Пользователь, &Пластилин Пароль)

	_ПостроительМетода = Новый ПостроительМетода(ЭтотОбъект);
	_ПарсерJSON = Новый ПарсерJSON();
	_Пользователь = Пользователь;
	_Пароль = Пароль;
	_Url = URL();

КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция URL()
	Возврат "https://push.1c-connect.com";
КонецФункции

Функция Заголовки()

	Заголовки = Новый Соответствие;
	Заголовки.Вставить("accept", "application/json");
	Заголовки.Вставить("Content-Type", "application/json");
	Возврат Заголовки;

КонецФункции

Функция Аутентификация()

	Аутентификация = Новый Структура();
	Аутентификация.Вставить("Пользователь", "");
	Аутентификация.Вставить("Пароль", "");
	Возврат Аутентификация;

КонецФункции

Функция ПараметрыHttpКоннектора()

	Параметры = Новый Структура();
	Параметры.Вставить("Заголовки", Заголовки());
	Параметры.Вставить("Аутентификация", Аутентификация());
	Возврат Параметры;

КонецФункции

#КонецОбласти

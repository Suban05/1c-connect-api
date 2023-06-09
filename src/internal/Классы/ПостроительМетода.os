#Использовать autumn
#Использовать decorator
#Использовать reflector

Перем _ВладелецМетода;
Перем _РефлекторОбъекта;
Перем _ОписаниеМетодов;

Процедура ПриСозданииОбъекта(ВладелецМетода)
	
	_ВладелецМетода = ВладелецМетода;
	_РефлекторОбъекта = Новый РефлекторОбъекта(_ВладелецМетода);
	_ОписаниеМетодов = _РефлекторОбъекта.ПолучитьТаблицуМетодов(АннотацияМетод());
	
КонецПроцедуры

#Область ПрограммныйИнтерфейс

Функция ПостроитьМетод(Метод) Экспорт

	ПостроительМетода = Новый ПостроительДекоратора(Новый БазовыйМетод(_ВладелецМетода));
	Возврат ДополнитьПостроительМетода(ПостроительМетода, Метод); 

КонецФункции	

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция ДополнитьПостроительМетода(ПостроительМетода, Метод)
	
	ОписаниеМетода = ПолучитьОписаниеМетода(Метод);	
	ДобавитьПоляИМетодыНаОсновеАннотаций(ПостроительМетода, ОписаниеМетода);
	ДобавитьПерехватчики(ПостроительМетода);
	Объект = ПостроительМетода.Построить();
	Метод = РаботаСАннотациями.ПолучитьЗначениеПараметраАннотации(
		РаботаСАннотациями.НайтиАннотацию(ОписаниеМетода.Аннотации, АннотацияМетод()),
		"url"
	);
	ТипЗапроса = РаботаСАннотациями.ПолучитьЗначениеПараметраАннотации(
		РаботаСАннотациями.НайтиАннотацию(ОписаниеМетода.Аннотации, АннотацияМетод()),
		"типзапроса"
	); 
	Возврат Объект.МетодАпи(Метод).ТипЗапроса(ТипЗапроса);

КонецФункции

Функция АннотацияМетод()
	Возврат "метод";
КонецФункции	

Функция ПолучитьОписаниеМетода(Метод)
	
	Перем ОписаниеМетода;
	Описания = _ОписаниеМетодов.НайтиСтроки(Новый Структура("Имя", Метод));
	Если Описания.Количество() > 0 Тогда
		ОписаниеМетода = Описания[0];
	КонецЕсли;
	Возврат ОписаниеМетода;

КонецФункции

Процедура ДобавитьПоляИМетодыНаОсновеАннотаций(ПостроительМетода, ОписаниеМетода)
	
	Аннотации = РаботаСАннотациями.НайтиАннотации(ОписаниеМетода.Аннотации, "поле");
	Для Каждого Описание Из Аннотации Цикл	
		Прозвище = РаботаСАннотациями.ПолучитьЗначениеПараметраАннотации(Описание, "сеттер");
		Идентификатор = РаботаСАннотациями.ПолучитьЗначениеПараметраАннотации(Описание, "идентификатор");
		ПостроительМетода
		.Поле(
			Новый Поле(Идентификатор)
			.Публичное()
			.Аннотация(
				Новый Аннотация("Поле")
			)
		)
		.Метод(
			Новый Метод(Прозвище)
			.Публичный()
			.Параметр(Новый ПараметрМетода("Значение"))
			.ТелоМетода(
				СтрШаблон(
					"%1 = Значение;
					|Возврат ЭтотОбъект",
					Идентификатор
				)
			)
		);
	КонецЦикла;

КонецПроцедуры

Процедура ДобавитьПерехватчики(ПостроительМетода)
	
	ПостроительМетода
	.Перехватчик(
		Новый Перехватчик("ВСоответствие")
		.ТипПерехватчика(ТипыПерехватчиковМетода.После)
		.Тело(
			"Возврат КоннектТипы.ВСоответствие(ЭтотОбъект);"	
		)
	)
	.Перехватчик(
		Новый Перехватчик("Вызвать")
		.ТипПерехватчика(ТипыПерехватчиковМетода.После)
		.Тело(
			"Возврат _Бот.Вызвать(_МетодАпи, ВСоответствие(), _ТипЗапроса);"	
		)
	);

КонецПроцедуры

#КонецОбласти

#Использовать autumn
#Использовать winow
#Использовать "app"
#Использовать asserts
#Использовать "../src"

Перем Сервер;

Процедура ПередЗапускомТеста() Экспорт	
	ВключитьСервер();
КонецПроцедуры

Процедура ПослеЗапускаТеста() Экспорт
КонецПроцедуры

Процедура ВключитьСервер() 
	
	Если Сервер = Неопределено Тогда
		Сервер = Новый Поделка();
		Сервер.ДобавитьЖелудь(Тип("ФейковыйКонтрол"));
		ФоновыеЗадания.Выполнить(Сервер, "ЗапуститьПриложение");
		Приостановить(1000);
		Настройки = Сервер.НайтиЖелудь("Настройки");
		Настройки.ЗадержкаПередЗакрытиемСокета = 150;
	КонецЕсли;

КонецПроцедуры

&Тест
Процедура ПодписатьсяНаСобытияКакБотНаЛиниюПоддержкиВызвать() Экспорт
	
	Вебхук = "https://localhost:3030";
	ид = "cd484afc-29b7-11ed-8dca-00505601495b";
	Метод = ПолучитьБота().ПодписатьсяНаСобытия()
						  .ТипПодписки(ТипыПодписки.bot)
						  .Вебхук(Вебхук)
				  		  .ИдОбъекта(ид);	
	Метод.Вызвать();	

КонецПроцедуры

&Тест
Процедура ПодписатьсяНаСобытияКакБотНаЛиниюПоддержкиВСоответствие() Экспорт
	
	Вебхук = "https://localhost:3030";
	ид = "cd484afc-29b7-11ed-8dca-00505601495b";
	Метод = ПолучитьБота().ПодписатьсяНаСобытия()
						  .ТипПодписки(ТипыПодписки.bot)
						  .Вебхук(Вебхук)
				  		  .ИдОбъекта(ид);
	Карта = Метод.ВСоответствие();		
	Ожидаем.Что(Метод.type).Равно(ТипыПодписки.bot)
		   .Что(Метод.url).Равно(Вебхук)
		   .Что(Метод.id).Равно(ид)
		   .Что(Карта["type"]).Равно(ТипыПодписки.bot)
		   .Что(Карта["url"]).Равно(Вебхук)
		   .Что(Карта["id"]).Равно(ид)
	;

КонецПроцедуры

&Тест
Процедура ПодписатьсяНаСобытияКакБотНаРеальнуюЛиниюПоддержкиВызвать() Экспорт
	
	Вебхук = "https://localhost:3030";
	ид = "cd484afc-29b7-11ed-8dca-00505601495b";
	Метод = ПолучитьБота().ПодписатьсяНаСобытия()
						  .ТипПодписки(ТипыПодписки.bot)
						  .Вебхук(Вебхук)
				  		  .ИдОбъекта(ид);
	Метод.Вызвать();						  

КонецПроцедуры

&Тест
Процедура ПодписатьсяНаСобытияКакБотНаРеальнуюЛиниюПоддержкиВСоответствие() Экспорт
	
	Вебхук = "https://localhost:3030";
	ид = "cd484afc-29b7-11ed-8dca-00505601495b";
	Метод = ПолучитьБота().ПодписатьсяНаСобытия()
						  .ТипПодписки(ТипыПодписки.bot)
						  .Вебхук(Вебхук)
				  		  .ИдОбъекта(ид);
	Карта = Метод.ВСоответствие();						  
	Ожидаем.Что(Метод.type).Равно(ТипыПодписки.bot)
		   .Что(Метод.url).Равно(Вебхук)
		   .Что(Метод.id).Равно(ид)
		   .Что(Карта["type"]).Равно(ТипыПодписки.bot)
		   .Что(Карта["url"]).Равно(Вебхук)
		   .Что(Карта["id"]).Равно(ид)
	;

КонецПроцедуры

&Тест
Процедура ПодписатьсяНаСобытияВсехЛинийВызвать() Экспорт
	
	Метод = ПолучитьБота().ПодписатьсяНаСобытия()
				  .ТипПодписки(ТипыПодписки.line)
				  .Вебхук("Вебхук");
	Метод.Вызвать();					  
	
КонецПроцедуры

&Тест
Процедура ПодписатьсяНаСобытияВсехЛинийВСоответствие() Экспорт
	
	Метод = ПолучитьБота().ПодписатьсяНаСобытия()
				  .ТипПодписки(ТипыПодписки.line)
				  .Вебхук("Вебхук");
	Карта = Метод.ВСоответствие();	
	Ожидаем.Что(Метод.type).Равно(ТипыПодписки.line)
		   .Что(Метод.url).Равно("Вебхук")
		   .Что(Карта["type"]).Равно(ТипыПодписки.line)
		   .Что(Карта["url"]).Равно("Вебхук")
	;

КонецПроцедуры

&Тест
Процедура НазначитьСвободногоСпециалистаВызвать() Экспорт
	
	Метод = ПолучитьБота().НазначитьСвободногоСпециалиста()
						.ИдЛинииПоддержки("ИдЛинииПоддержки")
						.ИдПользователя("ИдПользователя");
	Метод.Вызвать();

КонецПроцедуры

&Тест
Процедура НазначитьСвободногоСпециалистаВСоответствие() Экспорт
	
	Метод = ПолучитьБота().НазначитьСвободногоСпециалиста()
						.ИдЛинииПоддержки("ИдЛинииПоддержки")
						.ИдПользователя("ИдПользователя");
	Карта = Метод.ВСоответствие();
	Ожидаем.Что(Метод.line_id).Равно("ИдЛинииПоддержки")
		   .Что(Метод.user_id).Равно("ИдПользователя")
		   .Что(Карта["line_id"]).Равно("ИдЛинииПоддержки")
		   .Что(Карта["user_id"]).Равно("ИдПользователя")
	;

КонецПроцедуры

&Тест
Процедура НазначитьКонкретногоСпециалистаВызвать() Экспорт
	
	Метод = ПолучитьБота().НазначитьКонкретногоСпециалиста()
				.ИдЛинииПоддержки("ИдЛинииПоддержки")
				.ИдПользователя("ИдПользователя")
				.ИдСпециалиста("ИдСпециалиста")
				.ИдАвтора("ИдАвтора");
	Метод.Вызвать();
	
КонецПроцедуры

&Тест
Процедура НазначитьКонкретногоСпециалистаВСоответствие() Экспорт
	
	Метод = ПолучитьБота().НазначитьКонкретногоСпециалиста()
				.ИдЛинииПоддержки("ИдЛинииПоддержки")
				.ИдПользователя("ИдПользователя")
				.ИдСпециалиста("ИдСпециалиста")
				.ИдАвтора("ИдАвтора");
	Карта = Метод.ВСоответствие();
	Ожидаем.Что(Метод.line_id).Равно("ИдЛинииПоддержки")
		   .Что(Метод.user_id).Равно("ИдПользователя")
		   .Что(Метод.spec_id).Равно("ИдСпециалиста")
		   .Что(Метод.author_id).Равно("ИдАвтора")
		   .Что(Карта["line_id"]).Равно("ИдЛинииПоддержки")
		   .Что(Карта["user_id"]).Равно("ИдПользователя")
		   .Что(Карта["spec_id"]).Равно("ИдСпециалиста")
		   .Что(Карта["author_id"]).Равно("ИдАвтора")
	;

КонецПроцедуры

&Тест
Процедура ЗакрытьОбращениеВызвать() Экспорт
	
	Метод = ПолучитьБота().ЗакрытьОбращение()
				.ИдЛинииПоддержки("ИдЛинииПоддержки")
				.ИдПользователя("ИдПользователя")
				.ИдАвтора("ИдАвтора");
	Метод.Вызвать();				

КонецПроцедуры

&Тест
Процедура ЗакрытьОбращениеВСоответствие() Экспорт
	
	Метод = ПолучитьБота().ЗакрытьОбращение()
				.ИдЛинииПоддержки("ИдЛинииПоддержки")
				.ИдПользователя("ИдПользователя")
				.ИдАвтора("ИдАвтора");
	Карта = Метод.ВСоответствие();
	Ожидаем.Что(Метод.line_id).Равно("ИдЛинииПоддержки")
		   .Что(Метод.user_id).Равно("ИдПользователя")
		   .Что(Метод.author_id).Равно("ИдАвтора")
		   .Что(Карта["line_id"]).Равно("ИдЛинииПоддержки")
		   .Что(Карта["user_id"]).Равно("ИдПользователя")
		   .Что(Карта["author_id"]).Равно("ИдАвтора")
	;

КонецПроцедуры

&Тест
Процедура ОтправитьСообщениеПоЛинииПоддержкиВызвать() Экспорт
	
	Текст = "Здравствуйте. Это тестовое сообщение";
	Метод = ПолучитьБота().ОтправитьСообщениеПоЛинииПоддержки()
				.ИдЛинииПоддержки("cd484afc-29b7-11ed-8dca-00505601495b")
				.ИдПользователя("dd9f0a89-08db-49bf-83dc-dfe3269bf6fe")
				.Текст(Текст);
	Метод.Вызвать();				

КонецПроцедуры

&Тест
Процедура ОтправитьСообщениеПоЛинииПоддержкиВСоответствие() Экспорт
	
	Текст = "Здравствуйте. Это тестовое сообщение";
	Метод = ПолучитьБота().ОтправитьСообщениеПоЛинииПоддержки()
				.ИдЛинииПоддержки("cd484afc-29b7-11ed-8dca-00505601495b")
				.ИдПользователя("dd9f0a89-08db-49bf-83dc-dfe3269bf6fe")
				.Текст(Текст);
	Карта = Метод.ВСоответствие();
	Ожидаем.Что(Метод.line_id).Равно("cd484afc-29b7-11ed-8dca-00505601495b")
		   .Что(Метод.user_id).Равно("dd9f0a89-08db-49bf-83dc-dfe3269bf6fe")
		   .Что(Метод.text).Равно(Текст)
		   .Что(Карта["line_id"]).Равно("cd484afc-29b7-11ed-8dca-00505601495b")
		   .Что(Карта["user_id"]).Равно("dd9f0a89-08db-49bf-83dc-dfe3269bf6fe")
		   .Что(Карта["text"]).Равно(Текст)
	;

КонецПроцедуры

&Тест
Процедура ОтправитьСообщениеПоЛинииПоддержкиСКлавиатуройВызвать() Экспорт
	
	Текст = "Здравствуйте. Это тестовое сообщение с клавиатурой";
	Метод = ПолучитьБота().ОтправитьСообщениеПоЛинииПоддержки()
				.ИдЛинииПоддержки("cd484afc-29b7-11ed-8dca-00505601495b")
				.ИдПользователя("dd9f0a89-08db-49bf-83dc-dfe3269bf6fe")
				.Текст(Текст)
				.Клавиатура(
					Новый КоннектКлавиатура()
						.Кнопка(
							Новый КоннектКнопка()
							.Ид("button1")
							.Текст("Кнопка1")
						)
						.Кнопка(
							Новый КоннектКнопка()
							.Ид("button2")
							.Текст("Кнопка2")
						)
						.ПостроитьРяд()
						.Кнопка(
							Новый КоннектКнопка()
							.Ид("button3")
							.Текст("Кнопка3")
						)
						.Кнопка(
							Новый КоннектКнопка()
							.Ид("button4")
							.Текст("Кнопка4")
						)	
						.ПостроитьРяд()
				)		
			;
	Карта = Метод.ВСоответствие();
	Метод.Вызвать();				

КонецПроцедуры

&Тест
Процедура СкрытьБотМенюВызвать() Экспорт
	
	Метод = ПолучитьБота().СкрытьБотМеню()
				.ИдЛинииПоддержки("cd484afc-29b7-11ed-8dca-00505601495b")
				.ИдПользователя("dd9f0a89-08db-49bf-83dc-dfe3269bf6fe");
	Карта = Метод.ВСоответствие();
	Метод.Вызвать();				

КонецПроцедуры

&Тест
Процедура СоздатьБота() Экспорт

	Бот = Новый КоннектБот(
		Авторизация.Пользователь(), 
		Авторизация.Пароль()
	);
	Ожидаем.Что(ТипЗнч(Бот)).Равно(Тип("КоннектБот"));
	
КонецПроцедуры

&Тест
Процедура УстановитьUrl() Экспорт

	Бот = Новый КоннектБот(
		Авторизация.Пользователь(), 
		Авторизация.Пароль()
	);
	Url = "http://localhost:3333";
	Бот.УстановитьUrl(Url);
	Рефлектор = Новый Рефлектор();
	Значение = Рефлектор.ПолучитьСвойство(Бот, "_Url");
	Ожидаем.Что(Значение).Равно(Url);

КонецПроцедуры

Функция ПолучитьБота() Экспорт

	Бот = Новый КоннектБот(
		Авторизация.Пользователь(), 
		Авторизация.Пароль()
	);
	Бот.УстановитьUrl("http://localhost:3333");
	Возврат Бот;

КонецФункции	


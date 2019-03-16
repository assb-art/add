# language: ru

@IgnoreOnCIMainBuild
@TODO

@IgnoreOn82Builds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
#из-за ошибки платформы ввода текста в текстовый документ
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка перевода сгенерированного текста Gherkin

Как разработчик
Я хочу чтобы корректно происходил перевод накликанного текста Gherkin на другой язык
Чтобы я мог накликивать фичи на других языках

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий с закрытием всех окон кроме "* autotest: Vanessa ADD"
	#Когда в базе есть пользователь "ПользовательRu" с паролем "1" с языком "Русский"


Сценарий: Проверка перевода сгенерированного текста Gherkin часть один

	Когда Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой
	И     я перехожу к закладке "Сервис"
	И     из выпадающего списка "Язык генератора Gherkin" я выбираю "English"

	И     я перехожу к закладке "Работа с UI"
	И     я перехожу к закладке "Исходный XML"
	И     в поле "СгенерированныйXML" я ввожу текст из макета "Xml_1"

	И     я нажимаю на кнопку "Преобразовать исходный XML"
	И я жду, что поле "СгенерированныйСценарий" перестанет быть пустым в течение 50 секунд
	И значение поля "СгенерированныйСценарий" равно значению из макета "Xml_1En"

	И я выбираю пункт контекстного меню "Очистить" на элементе формы "СгенерированныйСценарий"
	И в поле 'СгенерированныйСценарий' я ввожу текст 'И В командном интерфейсе я выбираю \'Основная_1\' \'Справочник1\''
	И я нажимаю на кнопку 'Перевести'
	И пауза 1
	И значение поля "СгенерированныйСценарий" равно значению из макета "Xml_1En_2"

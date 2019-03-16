# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

# т.к. на 8.3.9 не работает нажатие на кнопку Контекстного Меню
@IgnoreOn839
@IgnoreOnLinux



Функционал: Проверка формирования отчета Allure

Как разработчик
Я хочу чтобы корректно формировался отчет Allure
Чтобы я мог видеть результат работы сценариев

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий с закрытием всех окон кроме "* Vanessa ADD"
	Когда Я открываю VanessaBehavior в режиме TestClient

Сценарий: Проверка отчета Allure
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И     В открытой форме я изменяю флаг "Формировать данные для отчета Allure"
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-ADD TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-ADD TestClient
	И в каталоге аллюр появился 2 файл json
	И     В форме "*Vanessa ADD*" в таблице "ДеревоТестов" я перехожу к строке:
	| 'Наименование'                                  |
	| 'Выполнение второго простого сценария' |
	#И     В открытой форме я нажимаю на кнопку с заголовком "Выполнить с начала"
	И я выбираю пункт контекстного меню "Выполнить с начала" на элементе формы с именем "ДеревоТестов"
	И Пауза 20
	И в каталоге аллюр появился 3 файл json

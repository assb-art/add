# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функциональность: Проверка получения текста таблицы, когда в ячейке есть вертикальная черта


Сценарий: Проверка получения текста таблицы, когда в ячейке есть вертикальная черта
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано    Я закрыл все окна клиентского приложения

	Когда Я открываю VanessaBehavior в режиме TestClient со стандартной библиотекой
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиПолученияТаблицыСВертикальнойЧертой"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-ADD TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-ADD TestClient

	И я перехожу к закладке "Работа с UI"
	И я нажимаю на кнопку 'Получить состояние текущего элемента формы'
	И пауза 3
	Тогда значение поля с именем "СгенерированныйСценарий" содержит текст "\'1\|1\'"





Сценарий: Закрыть TestClient, который был открыт из второго TestManager
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано Я закрыл все окна клиентского приложения кроме "*Vanessa ADD"
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-ADD TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-ADD TestClient
			И у элемента "Сценарии выполнены" я жду значения "Да" в течение 20 секунд
	И я закрываю TestClient "TM"
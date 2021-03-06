#language: ru
@tree

Функционал: Счета на оплату покупателям

Как менеджер по продажам
Я хочу создавать новые счета на оплату
Чтобы покупатели быстрее покупали наши товары

Контекст:
    Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

# Сценарий: Ввод нового счета путем копирования существующего
# Сценарий: Ввод нового счета на основании заказа
# Сценарий: Удаление счета на оплату
# Сценарий: Изменение существующего счета на оплату

Сценарий: Создание нового счета

    Дано удаляю документы "_ДемоСчетНаОплатуПокупателю" за текущий день
    Когда я открываю форму списка счетов 
        Когда В панели разделов я выбираю 'Интегрируемые подсистемы'
        И Я нажимаю кнопку командного интерфейса 'Демо: Счета на оплату покупателям'
    И создаю новый документ
        Когда открылось окно 'Демо: Счета на оплату покупателям'
        И я нажимаю на кнопку с именем 'ФормаСоздать'
    И заполняю шапку документа
        Когда открылось окно 'Демо: Счет на оплату покупателю (создание)'
        И я нажимаю кнопку выбора у поля "Организация"
        Тогда открылось окно 'Демо: Организации'
        И в таблице "Список" я перехожу к строке:
            | Код       | Наименование         |
            | 000000001 | Новые технологии ООО |
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Демо: Счет на оплату покупателю (создание) *'
        И я нажимаю кнопку выбора у поля "Партнер"
        Тогда открылось окно 'Демо: Партнеры'
        И в таблице "Список" я перехожу к строке:
            | Наименование                 |
            | 'Торговый дом "Комплексный"' |
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Демо: Счет на оплату покупателю (создание) *'
        И я нажимаю кнопку выбора у поля "Договор"
        Тогда открылось окно 'Демо: Договоры контрагентов'
        И Я закрываю окно 'Демо: Договоры контрагентов'
        Тогда открылось окно 'Демо: Счет на оплату покупателю (создание) *'
        И я нажимаю кнопку выбора у поля "Контрагент"
        Тогда открылось окно 'Демо: Контрагенты'
        И в таблице "Список" я перехожу к строке:
            | Наименование                 |
            | 'Торговый дом "Комплексный"' |
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Демо: Счет на оплату покупателю (создание) *'
        И я нажимаю кнопку выбора у поля "Договор"
        Тогда открылось окно 'Демо: Договоры контрагентов'
        И в таблице "Список" я выбираю текущую строку
        Тогда открылось окно 'Демо: Счет на оплату покупателю (создание) *'
        И я нажимаю кнопку выбора у поля "Подразделение"
        Тогда открылось окно 'Демо: Подразделения'
        И в таблице "Список" я выбираю текущую строку
    # И добавляю 1 товар в таблицу товаров
    И провожу документ
        Когда открылось окно 'Демо: Счет на оплату покупателю (создание) *'
        И я нажимаю кнопку выбора у поля "Ответственный"
        Тогда открылось окно 'Выбор пользователя'
        И в таблице "ПользователиСписок" я выбираю текущую строку
        И я нажимаю на кнопку 'Записать'
        И я запоминаю значение поля "Номер" как "НомерДокумента"
        И я нажимаю на кнопку 'Провести и закрыть'
        И я жду закрытия окна 'Демо: Счет на оплату покупателю *' в течение 20 секунд
    Тогда в списке вижу новый проведенный счет
        Когда я отбираю документы за сегодня
            И я нажимаю на кнопку с именем 'ФормаУстановитьИнтервал'
            Тогда открылось окно 'Выберите период'
            И я нажимаю на гиперссылку "SwitchText"
            И я перехожу к закладке "Group standard period"
            И я нажимаю на кнопку 'Выбрать'
        Когда открылось окно 'Демо: Счета на оплату покупателям'
        И я нажимаю на кнопку 'Настроить список...'
        Тогда открылось окно 'Настройка списка'
        И я нажимаю на кнопку 'Установить стандартные настройки'
        И я перехожу к закладке "Отбор"
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ДоступныеПоляТаблица" я перехожу к строке:
            | Доступные поля |
            | Проведен       |
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ДоступныеПоляТаблица" я выбираю текущую строку
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" я активизирую поле "Значение"
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" я выбираю текущую строку
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" из выпадающего списка "Значение" я выбираю точное значение 'Да'
        И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" я завершаю редактирование строки
        И я нажимаю на кнопку 'Завершить редактирование'

        Тогда таблица "Список" содержит строки:
    # 	Тогда таблица "Список" стала равной:
            | Номер       | Организация          | Партнер                      |
            | $НомерДокумента$ | Новые технологии ООО | 'Торговый дом "Комплексный"' |
            # | Дата       | Номер       | Организация          | Партнер                      |
            # | 14:27      | НТ-00000021 | Новые технологии ООО | 'Торговый дом "Комплексный"' |

        Когда Я запоминаю строку "$НомерДокумента$" как переменную "НомерДокумента" глобально

Сценарий: Печать счета на оплату

    Дано есть проведенный счет на оплату
        Когда я открываю форму списка счетов 
            Когда В панели разделов я выбираю 'Интегрируемые подсистемы'
            И Я нажимаю кнопку командного интерфейса 'Демо: Счета на оплату покупателям'
        Тогда таблица "Список" содержит строки:
            | Номер       | Организация          | Партнер                      |
            | $$НомерДокумента$$ | Новые технологии ООО | 'Торговый дом "Комплексный"' |
    Когда я формирую печатную форму счета
        И в таблице "Список" я перехожу к строке:
            | Номер       |
            | $$НомерДокумента$$ |
        И в таблице "Список" я выбираю текущую строку
        Когда открылось окно 'Демо: Счет на оплату покупателю * от *'
        И я нажимаю на кнопку 'Счет на оплату'
        Тогда открылось окно 'Печать документа'
        И в табличном документе 'ТекущаяПечатнаяФорма' я перехожу к ячейке "R11C2:R11C19"
    Тогда сформированная печатная форма совпадает с макетом-образцом
        Дано Табличный документ "ТекущаяПечатнаяФорма" равен макету "fixtures\Счет на оплату.mxl" по шаблону

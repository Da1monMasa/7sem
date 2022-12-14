
https://esat.worldskills.ru/competencies/dac59f20-134b-4aa4-94e5-518c488ccc9e/categories/d747aed4-5204-4ab4-a3f1-dec61f99735d

https://docs.google.com/document/d/17dkgRFIxEAdOvFsUuCD5TGeWHCqcC7U-Ha5MJ0EfdtI/edit#

# Критерии оценки

![image](https://user-images.githubusercontent.com/73188898/188390413-bc7f484e-b0eb-4b20-bcf5-d4135a50cf3f.png)

Модуль 1: Анализ и
проектирование
требований, бизнеспроцессов

## UML-Diagramm

Модуль 2: Проектирование
реляционного хранилища
данных

## ER-Diagramm, DataBase.

Модуль 3: Разработка баз
данных, объектов баз
данных и импорт

## Import from Execel, csv, txt, cod.

Модуль 4: Разработка
desktop-приложений

##DesktopApp

Модуль 5: Разработка
приложений для
мобильных платформ

## Mobile Apps

Модуль 6: Создание
инсталляторов

## Installation create

Модуль 7: Тестирование
программных решений

## Unit-test, библиотека классов

Модуль 8:
Документирование
программных решений

## word-шаблон, проверка умения работы с word

Модуль 9: Общий
профессионализм решения

## Согласно ТЗ делать программу, отсутствие комментариев Возможность развития информационной системы другими разработчиками.
Соответствие руководству по стилю заказчика
Обратная связь системы с пользователем
Стабильная работа всех разработанных программ
Стиль кода на протяжении разработки всей системы
Организация файловой структуры проекта
Соблюдение культуры кодирования
Комментарии к коду
Умение работать с системой контроля версий.
Умение работать с readme.md

![image](https://user-images.githubusercontent.com/73188898/188397365-c0122272-3847-402e-8efa-87c8fae9bb12.png)


# Unified Modeling Language (UML) - Унифицированный язык моделирования

## UML - язык графического описания для объектного моделирования в области разработки пограммного обеспечения, для моделирования юизнес-процессо, системного проектирования и отображения и отобраэения организационной структур. (см. глоссарий)

## Минусы UML:
* Трата времени - долго делать
* Необходимость знания различных диаграмм и их нотаций

## Плюсы 
* Возможность посмотреть на задачу с разных точек зренияж;
* лёгкость объяснения другим программистам;
* диаграммы просты для чтения после ознакомления с их синтаксисом;
## Пример UML диаграммы
![image](https://user-images.githubusercontent.com/73188898/188564289-4f2dda58-e557-471c-b11e-9dfd90a865af.png)


# Use Case Diagramm - Диаграмма прецедентов/вариантов использования

## Зачем она?
* Описание возможных сценариев работы с системой с точки зрения пользователя
* Возможные пути использования системы
* Описание всех участников системы(актёры)

## Для построения Use Case Diagramm необходимо открыть предметную область

Предметная область - это часть реального мира, данные и особенности в которой будут отражены в разрабатываемом программном решении. Например, в качестве предметной области можно привести пример "Школьного портала"

Что такое отношения в Use Case диаграмме?

Отношение = "линия"

Линии делятся на сплошную и пунктирную

Пунктирная - include и extend
Сплошная - ассоциация (использование)
include - используем ЕСЛИ БЕЗ ЭТОГО ДЕЙСТВИЯ НЕЛЬЗЯ ВЫПОЛНИТЬ ОСНОВНОЕ
extend - не обязательно

## UML Диаграмма турагенства пример

![image](https://user-images.githubusercontent.com/73188898/188598402-9b651c15-f31b-4747-8f95-0a9ec9785421.png)

# ER diagramma - entities-relationship

Сущность-связь

ER диаграммы бывают 
физическими и концептуальными
физическая - диаграмма, которую СУБД строит автоматически. Отображаются типы данных. Разрешены ли нулевые значения. Всё на английском должно быть.

Концептуальная - неважен язык, отсутствуют типы данных, нет обязательных полей, полная свобода, делаетася вручную в Visio

![image](https://user-images.githubusercontent.com/73188898/189847843-9c425ed6-803c-4e0c-ab58-576f9a66da10.png)

![image](https://user-images.githubusercontent.com/73188898/189849074-599d1eaf-d074-4c28-811e-0bbf0135f696.png)

![image](https://user-images.githubusercontent.com/73188898/189849340-bdabaf2c-bbbd-45b9-8f59-2e1c7fbffc8c.png)

# Создание базы данных
Нажал правой кнопкой мыши по своей БД, создал запрос

![image](https://user-images.githubusercontent.com/73188898/189850183-d9933646-7387-445c-aa9b-66f543ae32fc.png)

login: 195md password: 12345

![image](https://user-images.githubusercontent.com/73188898/189851211-b8daaad9-3a55-4c7e-93fb-ec482bb242ae.png)

![image](https://user-images.githubusercontent.com/73188898/189851776-3282c139-57ec-4fd0-be51-710020d684ee.png)

![image](https://user-images.githubusercontent.com/73188898/189852916-60a3f5ec-8de5-43a8-96ca-0bcb02998db2.png)

![image](https://user-images.githubusercontent.com/73188898/189865557-7070c48d-70da-4bd3-989c-946c36982906.png)


Отключать Auto Incriment если: у нас паспортные данные 

Связи: Один ко многим = внешний ключ(таблица у которой слово "один" выбираем первичный ключ, и ведём связь к столбцу таблицы "много". В ОДНОЙ стране МНОГО отель),
Многие ко многим = многим людям нравятся много книг, отдельная таблица с двумя первичными кючами

Типы данных: int, date, float,binary,bit,char,datetime,image,money,varchar,nvarchar

![image](https://user-images.githubusercontent.com/73188898/192772710-bf9de7f0-c0b5-45f8-b92c-bce974ee2de6.png)


Перевод в единое время в Excel таблице. 
1) Разделить данные по столбцам
2) Добавить скрин, где находится функция разделения по столбцам
![image](https://user-images.githubusercontent.com/73188898/195324885-f212f0a5-4ba1-4966-81c8-3c0ca3483fef.png)

Перевод в часы:
![image](https://user-images.githubusercontent.com/73188898/195326632-4cd2e459-cea7-4e21-b5ff-651bfdc5df06.png)

Перевод в минуты:

![image](https://user-images.githubusercontent.com/73188898/195327109-43765ccc-0951-4314-9f99-526329a5899e.png)

ВПР: Функция позволяет заменить 
Таблица для ВПР:
![image](https://user-images.githubusercontent.com/73188898/195328395-980e66c7-0429-4985-a161-c27868f84de4.png)

![image](https://user-images.githubusercontent.com/73188898/195329657-32ed8f56-6c88-40bd-9d2c-65a895bc1e3d.png)

1-я формула
![image](https://user-images.githubusercontent.com/73188898/196126722-1c819767-0160-4ca0-8c2a-a818d8019d60.png)

2-я формула

![image](https://user-images.githubusercontent.com/73188898/196126816-1e32ca31-a345-45e8-bfc0-b5b0efe8ca08.png)

![image](https://user-images.githubusercontent.com/73188898/196891769-78ae74f9-0aae-4a9c-8fbc-e0e06aed1859.png)

![image](https://user-images.githubusercontent.com/73188898/196898316-4c58238c-d9df-4bb6-a2fd-62899f544eda.png)

![image](https://user-images.githubusercontent.com/73188898/196909527-6827a8a0-4481-48ab-88e1-f84ebc4cc07c.png)

# Импорт данных

1. Не забываем ставить первичный ключ
2. Когда соединяем элементы - один тип данных
3. При импорте данных начинаем с таблиц, от которых выходит связь ключ

![image](https://user-images.githubusercontent.com/73188898/198227268-b9c1fade-551f-465b-8e86-5b832a3dbcc7.png)

Данные для входа: Логин test Пароль: 12345

![image](https://user-images.githubusercontent.com/73188898/198227528-409ee245-4257-4246-827b-ca61afd0b250.png)

Данные для входа: Логин test Пароль: 11111

![image](https://user-images.githubusercontent.com/73188898/198243155-9d157e23-5d93-4c0d-a675-0acc808db325.png)

Данные для входа: Логин Admin Пароль: Admin

![image](https://user-images.githubusercontent.com/73188898/198243406-e9d9d94b-f430-427c-8196-2740fdeaa5c6.png)

Данные для входа: Логин Admin Пароль: 12345

![image](https://user-images.githubusercontent.com/73188898/201060431-4046748d-be34-46e9-b9cd-a6a5155edc9d.png)

Данные для входа: Логин Admin Пароль: 12345

![image](https://user-images.githubusercontent.com/73188898/201060526-f6dfc5e0-33f7-4416-9cdc-98bf6d10e07f.png)

Данные для входа: Логин 1 Пароль: 1

#  Данные для импорта в БД "Blagodad" брать [отсюда](https://github.com/Julia-Zhirnova/Demoekzamen/tree/main/7%20задание%202022/09_1.2-2022_10/Вариант%2010/горнолыжный%20курорт/Сессия%201)

## 1. Приведение таблицы Сотрудники_import к импортному состоянию:

Что необходимо сделать
1. Удалить "ID" в поле "Код Сотрудника"
2. Разделить столбец "ФИО" на три поля с соответствующими названиями: "Фамилия", "Имя", "Отчество"
3. Поле "Последний вход" разделить на два поля, "Дата входа" и "Время входа"

## До преобразования таблица для импорта выглядит следующим образом:

![image](https://user-images.githubusercontent.com/73188898/202105414-2450722a-ba7a-4d4d-ac24-a9461fb3ad45.png)

# 1. Чтобы разделить столбец "ФИО" перейдём в данные, "текст по столбцам".  
Перед нами откроется "Мастер распределения текста по столбцам", выбираем галочку "с разделителями", жмём "Далее>". Далее в разделе "Символом-разделителем яввляется:" установить флажок "пробел" и знак табуляции.

![image](https://user-images.githubusercontent.com/73188898/202110043-e916a24f-7a2a-4c0a-9b30-00f05c4435aa.png)


![image](https://user-images.githubusercontent.com/73188898/202110500-450869e8-19e4-4201-89a0-b7fe6e7394f3.png)

По выходу получается так. Разделён столбец ФИО на три столбца "Фамилия", "Имя", "Отчество". 

![image](https://user-images.githubusercontent.com/73188898/202111824-268bbe7d-442b-483f-a744-7d3f3e1d984b.png)



2. Затем, необходимо удалить "ID" в поле "Код сотрудника" необходимо нажать "ctrl + f" 
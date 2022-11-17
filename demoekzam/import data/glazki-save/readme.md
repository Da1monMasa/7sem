# Файлы импорта для Glazki-save [здесь](https://github.com/Julia-Zhirnova/Demoekzamen/tree/main/2%20задание%20Глазки-Save/Сессия%201)

Импорт данных в Glazki-save следует начать с приведения данных для импорта к нужному виду.

## Что следует сделать: 
1. Необходимо скопировать данные в новый текстовый документ, далее сохранить файл как csv, для этого в поле тип файла выбираем "все файлы (*.*)"

![image](https://user-images.githubusercontent.com/73188898/202386806-3a228995-e207-4cdb-aedc-88376e479882.png)

# Импорт в БД
Чтобы импортировать данные в БД необходимо нажать правой кнопкой мыши по нужно базе данных --> Задачи --> Импорт данных 

![image](https://user-images.githubusercontent.com/73188898/202147452-fb017153-4ced-422f-b864-f416372a6218.png)

Откроется "Мастер импорта и экспорта SQL Server" Нажимаем "Next>"

![image](https://user-images.githubusercontent.com/73188898/202147773-632752ff-9b34-401f-8be5-d9bae3d8cdc0.png)

Далее выбираем в качестве источника данных "FlatFile source", указываем имя файла жмём "Next>"

![image](https://user-images.githubusercontent.com/73188898/202149050-4eac2221-3f1c-4928-a392-c70bdef27b36.png)

Затем выбираем в назначении SQL Server Native Client 11.0, выбираем галочку "Использовать проверку подленности SQL Server", вводим имя пользователя и пароль, жмём "далее"
![image](https://user-images.githubusercontent.com/73188898/202150815-e6004afa-992e-4791-963c-232e2492c46e.png)

После этого выбираем нужную таблицу и нажимаем далее, запускаем немедленно

![image](https://user-images.githubusercontent.com/73188898/202388797-a487b74c-a57d-4dfd-9613-87f8e4888f7d.png)

После успешного импорта высветится следующее сообщение об успешном выполнении

![image](https://user-images.githubusercontent.com/73188898/202151392-128833a8-176a-4b71-a49a-8420c316a4b8.png)

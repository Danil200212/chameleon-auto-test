# language: ru


Функция: Добавление/удаление уже существующего товара (БД)

  @all
  Сценарий: Успешное добавление/удаление уже существующего товара (БД)


    Дано к БД выполнено подключение "H2" с параметрами:
      | field    | value |
      | user     | user  |
      | password | pass  |

    * к БД выполняется запрос "Проверка списка БД"
    * количество элементов коллекции "Проверка списка БД" равно "4"
    * к БД выполняется запрос "Добавление товара" c параметрами:
      | field       | value     |
      | FOOD_NAME   | Апельсин  |
      | FOOD_TYPE   | Фрукт     |
      | FOOD_EXOTIC | 1         |
    * к БД выполняется запрос "Проверка списка БД"
    * количество элементов коллекции "Проверка списка БД" равно "5"
    * к БД выполняется запрос "Удаление последнего товара" c параметрами:
      | field       | value     |
      | FOOD_NAME   | Апельсин  |
    * к БД выполняется запрос "Проверка списка БД"
    * количество элементов коллекции "Проверка списка БД" равно "4"
    * закрыто подключение к БД


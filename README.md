# Целевое управление — Тестовое задание (Frontend Flutter)

## 📋 Описание
Тестовое задание для компании **Целевое управление**.  
Цель — разработать фронтенд (Flutter) для отображения задач на **канбан-доске** с возможностью drag-and-drop перемещения, по аналогии с Trello.

---

## 🎯 Основные требования
- Получение задач от backend:
  - `indicator_to_mo_id` (id задачи)
  - `parent_id` (id папки/колонки)
  - `name` (название задачи)
  - `order` (порядковый номер)
- Авторизация по Bearer Token: 5c3964b8e3ee4755f2cc0febb851e2f8
- Отображение задач на **канбан-доске**:
- Каждая колонка = папка (`parent_id`)
- Возможность **drag & drop** перемещения задач:
  - Между папками
  - Изменение порядка (`order`) внутри папки
- Красивое, интуитивно понятное оформление (в стиле KPI-Drive)
- “Защита от дурака” — обработка некорректных действий пользователя
- Учет ответов сервера при изменении данных
- Минимум кликов и максимально простой интерфейс

---
## 🔗 API

### Получение задач
`POST https://api.dev.kpi-drive.ru/_api/indicators/get_mo_indicators`  

**Параметры (form-data):**
| Параметр            | Значение                                                 |
|--------------------|---------------------------------------------|
| period_start         | 2025-08-01                                               |
| period_end          | 2025-08-31                                               |
| period_key           | month                                                       |
| requested_mo_id | 42                                                              |
| behaviour_key     | task,kpi_task                                              |
| with_result           | false                                                           |
| response_fields    | name,indicator_to_mo_id,parent_id,order |
| auth_user_id         | 40                                                              |

### Сохранение изменений задачи
`POST https://api.dev.kpi-drive.ru/_api/indicators/save_indicator_instance_field`

**Параметры (form-data):**
| Параметр        | Пример значения   |
|-----------------|------------------------|
| period_start    | 2025-08-01                |
| period_end      | 2025-08-31               |
| period_key      | month                        |
| indicator_to_mo_id | 315892               |
| field_name      | parent_id / order       |
| field_value     | 311841 / 2                   |
| auth_user_id    | 40                              |

---
## 🚀 Запуск проекта
1. Клонировать репозиторий:
 ```bash
 git clone https://github.com/username/target_management_test_task.git
 ```
 2. Перейти в папку проекта:
 ```bash
 cd target_management_test_task
 ```
 3. Установить зависимости:
 ```bash
 flutter pub get
 ```

 4. Запустить приложение:
  ```bash
 flutter run -d chrome --release
 ```

 ![Демонстрация работы](assets/KPI-Drive.gif)
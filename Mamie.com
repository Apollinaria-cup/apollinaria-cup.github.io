<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ресторан "Gusto & ИИ"</title>
    <style>
        :root {
            --bg-color: #0b0c10;
            --card-bg: #1f2833;
            --accent-color: #c5a059; /* Золотой акцент */
            --text-color: #ffffff;
            --text-muted: #c5c6c7;
        }

        body {
            font-family: 'Playfair Display', Georgia, serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            margin: 0;
            padding: 0;
            scroll-behavior: smooth;
        }

        /* Навигация */
        nav {
            position: fixed;
            top: 0; width: 100%;
            background: rgba(11, 12, 16, 0.95);
            display: flex; justify-content: center; gap: 30px;
            padding: 20px 0; z-index: 1000;
            border-bottom: 1px solid #2f3e46;
        }
        nav a {
            color: var(--text-color); text-decoration: none;
            font-size: 1.1rem; font-weight: bold; transition: 0.3s;
        }
        nav a:hover { color: var(--accent-color); }

        /* Главный баннер */
        .hero {
            height: 60vh;
            background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.8)), url('https://unsplash.com') no-repeat center center/cover;
            display: flex; flex-direction: column; justify-content: center; align-items: center;
            text-align: center; padding: 0 20px; margin-top: 60px;
        }
        .hero h1 { font-size: 3.5rem; margin-bottom: 10px; color: var(--accent-color); }
        .hero p { font-size: 1.5rem; color: var(--text-muted); font-style: italic; }

        /* Секции */
        .section { max-width: 1100px; margin: 80px auto; padding: 0 20px; }
        h2 { text-align: center; font-size: 2.5rem; color: var(--accent-color); margin-bottom: 40px; }

        /* Меню (Сетка) */
        .menu-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 30px; }
        .menu-item { background: var(--card-bg); border-radius: 12px; overflow: hidden; transition: 0.3s; }
        .menu-item:hover { transform: translateY(-5px); }
        .menu-item img { width: 100%; height: 200px; object-fit: cover; }
        .menu-item-info { padding: 20px; }
        .menu-item-title { font-size: 1.4rem; margin: 0; display: flex; justify-content: space-between; }
        .price { color: var(--accent-color); font-weight: bold; }
        .menu-item-desc { color: var(--text-muted); font-size: 0.95rem; margin-top: 10px; }

        /* Формы и внешние виджеты */
        .widget-box { background: var(--card-bg); padding: 40px; border-radius: 12px; text-align: center; box-shadow: 0 4px 15px rgba(0,0,0,0.5); }
        
        /* Кнопки */
        .btn {
            background: var(--accent-color); color: #000; padding: 12px 30px;
            border: none; border-radius: 6px; font-size: 1.1rem; font-weight: bold;
            cursor: pointer; text-decoration: none; display: inline-block; transition: 0.3s;
        }
        .btn:hover { background: #b08d49; transform: scale(1.05); }

        footer { text-align: center; padding: 40px; color: var(--text-muted); border-top: 1px solid #2f3e46; }
    </style>
</head>
<body>

    <nav>
        <a href="#about">О нас</a>
        <a href="#menu">Меню</a>
        <a href="#booking">Бронь</a>
        <a href="#reviews">Отзывы</a>
    </nav>

    <div class="hero">
        <h1>Ресторан Gusto</h1>
        <p>Изысканная кухня & Атмосфера будущего</p>
    </div>

    <!-- О РЕСТОРАНЕ -->
    <div id="about" class="section">
        <h2>О нашем ресторане</h2>
        <div class="widget-box" style="font-size: 1.2rem; line-height: 1.8;">
            <p>Добро пожаловать в <strong>Gusto</strong> — место, где классические кулинарные традиции встречаются с высокими технологиями. Мы используем только свежие фермерские продукты, а наш умный ИИ-помощник поможет вам подобрать идеальное вино к ужину в чате поддержки.</p>
            <p>📍


с: Центр, Екатеринбург | ⏰ Часы работы: Пн-Вс: 12:00 - 00:00</p>
        </div>
    </div>

    <!-- МЕНЮ -->
    <div id="menu" class="section">
        <h2>Наше Меню</h2>
        <div class="menu-grid">
            <div class="menu-item">
                <img src="https://unsplash.com" alt="Стейк">
                <div class="menu-item-info">
                    <div class="menu-item-title">Стейк Рибай <span class="price">1200 ₽</span></div>
                    <p class="menu-item-desc">Сочный стейк из мраморной говядины с соусом на выбор и ароматным розмарином.</p>
                </div>
            </div>
            <div class="menu-item">
                <img src="https://unsplash.com" alt="Пицца">
                <div class="menu-item-info">
                    <div class="menu-item-title">Пицца Четыре Сыра <span class="price">650 ₽</span></div>
                    <p class="menu-item-desc">Моцарелла, Горгонзола, Пармезан и Чеддер на тонком фирменном тесте.</p>
                </div>
            </div>
            <div class="menu-item">
                <img src="https://unsplash.com" alt="Десерт">
                <div class="menu-item-info">
                    <div class="menu-item-title">Фондан с матчей <span class="price">400 ₽</span></div>
                    <p class="menu-item-desc">Горячий шоколадный десерт с жидкой начинкой из зеленого чая матча и шариком мороженого.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- БРОНИРОВАНИЕ -->
    <div id="booking" class="section">
        <h2>Забронировать столик</h2>
        <div class="widget-box">
            <p style="margin-bottom: 25px; color: var(--text-muted);">Выберите удобную дату и время. Наш менеджер сразу закрепит стол за вами.</p>
            
            <!-- Шаг 2: Сюда мы вставим виджет бронирования (см. инструкцию ниже) -->
            <a href="https://t.me" target="_blank" class="btn">Забронировать через Telegram</a>
        </div>
    </div>

    <!-- ОТЗЫВЫ -->
    <div id="reviews" class="section">
        <h2>Отзывы гостей</h2>
        <div class="widget-box">
            <!-- Шаг 3: Сюда мы вставим виджет отзывов (см. инструкцию ниже) -->
            <p style="color: var(--text-muted);">Оставьте свой отзыв о посещении нашего ресторана!</p>
            <div id="hypercomments_widget"></div>
        </div>
    </div>

    <footer>
        <p>© 2026 Ресторан Gusto. Все права защищены.</p>
    </footer>

    <!-- Шаг 4: Сюда вставляется скрипт Живого Чата (ИИ + Оператор) -->

</body>
</html> Адре

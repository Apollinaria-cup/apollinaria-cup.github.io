<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MAMIE | Городское бистро в Москве</title>
    <link rel="preconnect" href="https://googleapis.com">
    <link rel="preconnect" href="https://gstatic.com" crossorigin>
    <link href="https://googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..700;1,400..700&family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg-white: #fcfbf7; 
            --navy-blue: #1d3557; 
            --accent-blue: #457b9d; 
            --text-dark: #2b2d42;
            --text-muted: #6c757d;
            --shadow: 0 10px 30px rgba(29, 53, 87, 0.08);
        }

        body {
            font-family: 'Montserrat', sans-serif;
            background-color: var(--bg-white);
            color: var(--text-dark);
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        /* Шапка */
        header {
            position: fixed;
            top: 0; width: 100%;
            background: rgba(252, 251, 247, 0.96);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(29, 53, 87, 0.1);
            z-index: 1000;
            display: flex; flex-direction: column; align-items: center; padding: 15px 0;
        }

        .logo {
            font-family: 'Playfair Display', serif;
            font-size: 2.2rem;
            font-weight: 700;
            letter-spacing: 4px;
            color: var(--navy-blue);
            margin-bottom: 5px;
            text-decoration: none;
            cursor: pointer;
        }

        nav { display: flex; gap: 35px; margin-top: 5px; }
        nav a {
            color: var(--text-dark); text-decoration: none; font-weight: 600;
            font-size: 0.9rem; letter-spacing: 1px; text-transform: uppercase;
            transition: 0.3s; position: relative; cursor: pointer;
        }
        nav a:hover, nav a.active { color: var(--navy-blue); }
        nav a::after {
            content: ''; position: absolute; bottom: -5px; left: 0; width: 0; height: 2px;
            background-color: var(--navy-blue); transition: 0.3s;
        }
        nav a:hover::after, nav a.active::after { width: 100%; }

        /* Переключатель больших окон (Главная vs Меню) */
        .page-window { display: none; margin-top: 140px; animation: fadeIn 0.4s ease-in-out forwards; }
        .page-window.active { display: block; }

        @keyframes fadeIn { from { opacity: 0; transform: translateY(8px); } to { opacity: 1; transform: translateY(0); } }

        .main-container { max-width: 900px; margin: 0 auto; padding: 20px; }

        /* Слайдер с реальными фото Mamie из Яндекс Карт */
        .slider-wrapper {
            position: relative; width: 100%; height: 450px;
            border-radius: 16px; overflow: hidden; box-shadow: var(--shadow); margin-bottom: 40px;
        }
        .slider { display: flex; width: 100%; height: 100%; transition: transform 0.5s ease-in-out; }
        .slide { min-width: 100%; height: 100%; position: relative; }
        .slide img { width: 100%; height: 100%; object-fit: cover; }
        .slide-caption {
            position: absolute; bottom: 0; left: 0; width: 100%;
            background: linear-gradient(transparent, rgba(0,0,0,0.7));
            color: #fff; padding: 30px 20px 20px; box-sizing: border-box;
        }
        .slide-caption h3 { margin: 0 0 5px 0; font-family: 'Playfair Display', serif; font-size: 1.8rem; }
        .slide-caption p { margin: 0; font-size: 0.95rem; opacity: 0.9; }
        
        .slider-btn {
            position: absolute; top: 50%; transform: translateY(-50%);
            background: rgba(252, 251, 247, 0.9); border: none; width: 45px; height: 45px;
            border-radius: 50%; color: var(--navy-blue); font-size: 1.5rem; font-weight: bold;
            cursor: pointer; display: flex; align-items: center; justify-content: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1); transition: 0.3s
Error 404 (Not Found)!!1
googleapis.com


z-index: 10;
        }
        .slider-btn:hover { background: var(--navy-blue); color: #fff; }
        .prev { left: 20px; } .next { right: 20px; }

        .slider-dots {
            position: absolute; bottom: 20px; left: 50%; transform: translateX(-50%);
            display: flex; gap: 8px; z-index: 10;
        }
        .dot { width: 10px; height: 10px; background: rgba(255,255,255,0.4); border-radius: 50%; cursor: pointer; transition: 0.3s; }
        .dot.active { background: #ffffff; width: 24px; border-radius: 5px; }

        /* Блоки контента */
        .content-section {
            background: #ffffff; border-radius: 16px; padding: 40px;
            box-shadow: var(--shadow); margin-bottom: 40px; border: 1px solid rgba(29, 53, 87, 0.05);
        }
        .content-section h2 {
            font-family: 'Playfair Display', serif; font-size: 2rem; color: var(--navy-blue);
            margin-top: 0; margin-bottom: 20px; border-left: 4px solid var(--accent-blue); padding-left: 15px;
        }
        .content-section p { font-size: 1.05rem; line-height: 1.8; color: var(--text-dark); }

        .btn-navy {
            background-color: var(--navy-blue); color: #fff; padding: 15px 40px;
            border: none; border-radius: 8px; font-weight: 600; font-size: 1rem;
            cursor: pointer; text-decoration: none; display: inline-block; transition: 0.3s;
            box-shadow: 0 4px 15px rgba(29, 53, 87, 0.2);
        }
        .btn-navy:hover { background-color: var(--accent-blue); transform: translateY(-2px); }

        /* Отзывы */
        .review-input, .review-textarea {
            width: 100%; padding: 12px; margin-bottom: 15px; border: 1px solid rgba(29, 53, 87, 0.2);
            border-radius: 6px; font-family: inherit; box-sizing: border-box; background: #fff;
        }
        .review-item { border-bottom: 1px solid #edf2f4; padding: 15px 0; }
        .review-item:last-child { border: none; }
        .review-name { font-weight: 600; color: var(--navy-blue); margin-bottom: 5px; }

        /* Окно Меню */
        .menu-container { max-width: 900px; margin: 0 auto; padding: 20px 20px 60px; }
        .menu-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 25px; }
        
        .menu-card {
            background: #ffffff; border-radius: 12px; overflow: hidden; box-shadow: var(--shadow);
            border: 1px solid rgba(29, 53, 87, 0.05); display: flex; flex-direction: column;
        }
        .menu-card img { width: 100%; height: 220px; object-fit: cover; }
        .menu-card-body { padding: 20px; flex-grow: 1; display: flex; flex-direction: column; justify-content: space-between; }
        .menu-card-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 10px; gap: 10px; }
        .menu-card-title { font-family: 'Playfair Display', serif; font-size: 1.25rem; color: var(--navy-blue); margin: 0; }
        .menu-card-price { font-weight: 600; color: var(--accent-blue); font-size: 1.1rem; white-space: nowrap; }
        .menu-card-desc { color: var(--text-muted); font-size: 0.9rem; line-height: 1.6; margin: 0; }

        footer { text-align: center; padding: 40px; color: var(--text-muted); font-size: 0.85rem; }
    </style>
</head>
<body>

    <header>
        <div class="logo" onclick="switchWindow('main')">MAMIE</div>
        <nav>
            <a id="nav-about" class="active" onclick="scrollToSection('about')">О нас</a>
            <a id="nav-menu" onclick="switchWindow('menu')">Меню</a>
            <a id="nav-booking" onclick="scrollToSection('booking')">Бронь</a>
            <a id="nav-reviews" onclick="scrollToSection('reviews')">Отзывы</a>
        </nav>
    </header>

    <!-- ГЛАВНОЕ ОКНО -->
    <div id="window-main" class="page-window active">
        <div class="main-container">
            
            <!-- Слайдер с реальными фото бистро Mamie -->
            <div class="slider-wrapper">
                <button class="slider-btn prev" onclick="moveSlide(-1)">❮</button>
                <div class="slider" i


d="slider">
                    <div class="slide">
                        <img src="https://yandex.net" alt="Интерьер Mamie 1">
                        <div class="slide-caption"><h3>Французский Прованс</h3><p>Эстетичный интерьер с винтажной европейской мебелью в самом сердце Москвы.</p></div>
                    </div>
                    <div class="slide">
                        <img src="https://yandex.net" alt="Интерьер Mamie 2">
                        <div class="slide-caption"><h3>Атмосфера Lucky Group</h3><p>Уникальный ресторанный проект на Большой Никитской с безупречным сервисом.</p></div>
                    </div>
                    <div class="slide">
                        <img src="https://yandex.net" alt="Интерьер Mamie 3">
                        <div class="slide-caption"><h3>Открытая кухня</h3><p>Наблюдайте за процессом создания кулинарных шедевров французской кухни.</p></div>
                    </div>
                    <div class="slide">
                        <img src="https://yandex.net" alt="Интерьер Mamie 4">
                        <div class="slide-caption"><h3>Винтажный шарм</h3><p>Уникальная антикварная посуда, привезенная с европейских рынков.</p></div>
                    </div>
                    <div class="slide">
                        <img src="https://yandex.net" alt="Интерьер Mamie 5">;

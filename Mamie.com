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

        .page-window { display: none; margin-top: 140px; animation: fadeIn 0.4s ease-in-out forwards; }
        .page-window.active { display: block; }

        @keyframes fadeIn { from { opacity: 0; transform: translateY(8px); } to { opacity: 1; transform: translateY(0); } }

        .main-container { max-width: 900px; margin: 0 auto; padding: 20px; }

        /* Элегантная CSS-заглушка вместо ломающихся ссылок на фото */
        .slider-wrapper {
            position: relative; width: 100%; height: 400px;
            border-radius: 16px; overflow: hidden; box-shadow: var(--shadow); margin-bottom: 40px;
        }
        .slider { display: flex; width: 100%; height: 100%; transition: transform 0.5s ease-in-out; }
        .slide { 
            min-width: 100%; height: 100%; 
            display: flex; flex-direction: column; justify-content: center; align-items: center;
            background: linear-gradient(135deg, #1d3557 0%, #457b9d 100%);
            color: #ffffff; text-align: center; padding: 20px; box-sizing: border-box;
        }
        .slide h3 { font-family: 'Playfair Display', serif; font-size: 2.2rem; margin-bottom: 10px; }
        .slide p { font-size: 1.1rem; max-width: 600px; opacity: 0.9; }
        
        .slider-btn {
            position: absolute; top: 50%; transform: translateY(-50%);
            background: rgba(252, 251, 247, 0.9); border: none; width: 45px; height: 45px;
            border-radius: 50%; color: var(--navy-blue); font-size: 1.5rem; font-weight: bold;
            cursor: pointer; display: flex; align-items: center; justify-content: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1); transition: 0.3s; z-index: 10;
        }
        .slider-btn:hover { background: var(--navy-blue); color: #fff; }
        .prev { left: 20px; }
Error 404 (Not Found)!!1
googleapis.com


<div class="slider" id="slider">
                    <div class="slide">
                        <h3>Французский Прованс</h3>
                        <p>Эстетичный интерьер с винтажной европейской мебелью и мягким камерным светом в самом сердце Москвы.</p>
                    </div>
                    <div class="slide">
                        <h3>Lucky Group</h3>
                        <p>Ресторанный проект премиум-класса на Большой Никитской, сочетающий гастрономию и безупречный сервис.</p>
                    </div>
                    <div class="slide">
                        <h3>Открытая кухня</h3>
                        <p>Наблюдайте за процессом создания кулинарных шедевров французской и итальянской кухонь от лучших шефов.</p>
                    </div>
                    <div class="slide">
                        <h3>Винтажный шарм</h3>
                        <p>Каждая деталь — от старинных тарелок до текстиля — привезена с европейских блошиных рынков.</p>
                    </div>
                    <div class="slide">
                        <h3>Свежая выпечка</h3>
                        <p>Собственный ремесленный хлеб, хрустящие круассаны и изящные десерты, обновляемые каждое утро.</p>
                    </div>
                    <div class="slide">
                        <h3>Живая атмосфера</h3>
                        <p>Идеальное место как для неспешного бранча, так и для праздничного светского ужина.</p>
                    </div>
                    <div class="slide">
                        <h3>Уютные детали</h3>
                        <p>Теплый прием, живые цветы на столах и атмосфера уютного загородного дома во Франции.</p>
                    </div>
                </div>.n


ext { right: 20px; }

        .slider-dots {
            position: absolute; bottom: 20px; left: 50%; transform: translateX(-50%);
            display: flex; gap: 8px; z-index: 10;
        }
        .dot { width: 10px; height: 10px; background: rgba(255,255,255,0.4); border-radius: 50%; cursor: pointer; transition: 0.3s; }
        .dot.active { background: #ffffff; width: 24px; border-radius: 5px; }

        .content-section {
            background: #ffffff; border-radius: 16px; padding: 40px;
            box-shadow: var(--shadow); margin-bottom: 30px; border: 1px solid rgba(29, 53, 87, 0.05);
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

        .review-input, .review-textarea {
            width: 100%; padding: 12px; margin-bottom: 15px; border: 1px solid rgba(29, 53, 87, 0.2);
            border-radius: 6px; font-family: inherit; box-sizing: border-box; background: #fff;
        }
        .review-item { border-bottom: 1px solid #edf2f4; padding: 15px 0; }
        .review-item:last-child { border: none; }
        .review-name { font-weight: 600; color: var(--navy-blue); margin-bottom: 5px; }

        .menu-container { max-width: 900px; margin: 0 auto; padding: 20px 20px 60px; }
        .menu-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 25px; }
        
        .menu-card {
            background: #ffffff; border-radius: 12px; overflow: hidden; box-shadow: var(--shadow);
            border: 1px solid rgba(29, 53, 87, 0.05); display: flex; flex-direction: column;
        }
        .menu-photo-placeholder {
            height: 180px; background: linear-gradient(135deg, #f1faee 0%, #a8dadc 100%);
            display: flex; align-items: center; justify-content: center;
            color: var(--navy-blue); font-family: 'Playfair Display', serif; font-weight: bold; font-size: 1.1rem;
        }
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
            
            <!-- Слайдер-презентация -->
            <div class="slider-wrapper">
                <button class="slider-btn prev" onclick="moveSlide(-1)">❮</button>

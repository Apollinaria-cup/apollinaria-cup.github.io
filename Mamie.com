<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ресторан Mamie (Бистро) на Большой Никитской — меню, отзывы | Гид Хаб</title>
    <meta name="description" content="Аутентичное парижское бистро Mamie в Москве. Французский прованс, средний чек 3000–5000 ₽, работа до 00:00. Рейтинг 4,8. Закажите столик на Гид Хаб.">
    
    <!-- Микроразметка Schema.org для организации (Ресторан) -->
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "Restaurant",
      "name": "Mamie",
      "image": "URL_НА_ГЛАВНОЕ_ФОТО_ЗАВЕДЕНИЯ.jpg",
      "address": {
        "@type": "PostalAddress",
        "streetAddress": "Большая Никитская ул., 14, стр. 7",
        "addressLocality": "Москва",
        "addressCountry": "RU"
      },
      "telephone": "+74951897878",
      "servesCuisine": "Французская",
      "priceRange": "₽₽₽",
      "aggregateRating": {
        "@type": "AggregateRating",
        "ratingValue": "4.8",
        "reviewCount": "1688"
      },
      "openingHours": "Mo-Su 10:00-00:00",
      "url": "URL_СТРАНИЦЫ_НА_ГИД_ХАБ"
    }
    </script>

    <!-- Подключение стилей (замените на свой файл) -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <!-- Шапка сайта -->
    <header>
        <nav>
            <a href="/" class="logo">Гид Хаб</a>
            <ul>
                <li><a href="#menu">Меню</a></li>
                <li><a href="#reviews">Отзывы</a></li>
                <li><a href="#contact">Контакты</a></li>
            </ul>
        </nav>
    </header>

    <!-- Главный экран -->
    <main>
        <section class="hero">
            <h1>Mamie — аутентичное парижское бистро</h1>
            <p class="subtitle">Французский прованс, уютная атмосфера и гастрономия в сердце Москвы.</p>
            <div class="rating">
                <span>★ 4,8</span> (1688 оценок)
            </div>
            <p class="location">Большая Никитская ул., 14, стр. 7 | 2 мин от Консерватории</p>
            <a href="#booking" class="cta-button">Забронировать столик</a>
        </section>

        <!-- О заведении -->
        <section class="about">
            <h2>Коротко о месте</h2>
            <p>Ресторан Mamie — это уголок настоящего Парижа. Аутентичное бистро, оформленное в стиле французского прованса. Стильный интерьер с множеством деталей, приятная музыка и свет создают атмосферу, которая располагает к расслабленному вечеру.</p>
            <div class="features">
                <div class="feature">
                    <h3>FOR KIDS</h3>
                    <p>Семейный ресторан</p>
                </div>
                <div class="feature">
                    <h3>INTERIOR</h3>
                    <p>Стильный прованс</p>
                </div>
                <div class="feature">
                    <h3>TEAM</h3>
                    <p>Дружелюбный сервис</p>
                </div>
            </div>
        </section>

        <!-- Меню -->
        <section id="menu" class="menu">
            <h2>Гастрономия</h2>
            <p>Эталонный салат «нисуаз», воздушный луковый суп, безупречная паста и свежая выпечка. Средний счёт: 3000–5000 ₽.</p>
            <a href="#" class="link">Посмотреть всё меню</a>
            <div class="perks">
                <p>Ваша привилегия в поездке: <strong>Mir Supreme</strong></p>
            </div>
        </section>

        <!-- Отзывы -->
        <section id="reviews" class="reviews">
            <h2>Отзывы (915)</h2>
            <blockquote>
                <p>«Тот случай, когда интерьер и кухня звучат в унисон. Лучший нисуаз в городе и самая расслабляющая атмосфера на Никитской».</p>
                <cite>— Вика А.</cite>
            </blockquote>
        </section>

        <!-- Контакты и карта -->
        <section id="contact" class="contact">
            <h2>Как добраться</h2>
            <address>
                <p><strong>Адрес:</strong> Большая Никитская ул., 14, стр. 7, Москва</p>
                <p><strong>Телефон:</strong> <a href="tel:+74951897878">+7 (495) 189-78-78</a></p>
                <p><strong>Время работы:</strong> Ежедневно до 00:00</p>
                <p><strong>Особенности:</strong> Доставка, еда навынос, кофе с собой, можно с собакой.</p>
            </address>
            <div class="actions">
                <a href="#" class="btn-secondary">Показать входы</a>
                <a href="#" class="btn-secondary">Показать парковки</a>
                <a href="#" class="btn-secondary">Такси от 389 ₽</a>
            </div>
        </section>
    </main>

    <!-- Подвал сайта -->
    <footer>
        <p>&copy; 2026 Гид Хаб. Входит в подборки: Гастрономия Москвы, Семейные рестораны, Бистро Москвы.</p>
    </footer>

    <!-- Подключение скриптов (если нужны интерактивные элементы) -->
    <script src="scripts.js"></script>
</body>
</html>

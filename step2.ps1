[Console]::OutputEncoding = [System.Text.UTF8Encoding]::UTF8
$f = 'C:\Users\John Carter\Desktop\Antigravity\clock\index.html'

$html = @"
<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ЖАМЕР — Премиальные часы</title>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&family=Montserrat:wght@300;400;500;600&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
body{font-family:'Montserrat',sans-serif;background:#eaf5e0;color:#1a1a1a;line-height:1.5}
.container{max-width:1200px;margin:0 auto;padding:0 24px}

header{background:#eaf5e0;padding:20px 0;border-bottom:1px solid rgba(0,0,0,0.05)}
.header-inner{display:flex;align-items:center;justify-content:space-between;max-width:1200px;margin:0 auto;padding:0 24px}
.logo{font-family:'Playfair Display',serif;font-size:1.4rem;font-weight:600;letter-spacing:0.15em;text-decoration:none;color:#1a1a1a}
nav ul{display:flex;gap:40px;list-style:none}
nav a{text-decoration:none;color:#555;font-size:0.92rem;font-weight:400;letter-spacing:0.04em;transition:color 0.2s}
nav a:hover{color:#000}
.header-icons{display:flex;gap:20px;align-items:center}
.header-icons a{color:#555;text-decoration:none;font-size:1.1rem}

.hero{background:#eaf5e0;padding:60px 0 100px}
.hero-main{display:flex;align-items:center;justify-content:space-between;max-width:1200px;margin:0 auto;padding:0 24px;gap:40px}
.hero-text{flex:1;max-width:540px}
.hero-text h1{font-family:'Playfair Display',serif;font-size:3.5rem;font-weight:500;line-height:1.1;margin-bottom:24px;color:#1a1a1a}
.hero-text p{font-size:1.05rem;color:#666;margin-bottom:36px;line-height:1.7}
.hero-cta{display:flex;gap:16px}
.btn{display:inline-flex;align-items:center;gap:8px;padding:14px 28px;font-size:0.85rem;font-weight:500;letter-spacing:0.08em;text-transform:uppercase;border-radius:4px;cursor:pointer;text-decoration:none;transition:all 0.2s;border:none}
.btn-primary{background:#1a1a1a;color:#fff}
.btn-primary:hover{background:#333}
.btn-ghost{background:transparent;color:#1a1a1a;border:1px solid #1a1a1a}
.btn-ghost:hover{background:#1a1a1a;color:#fff}

.hero-visual{flex:1;display:flex;justify-content:flex-end;gap:20px}
.hero-thumb{width:160px;background:#f0f5e8;border-radius:8px;padding:16px;text-align:center;box-shadow:0 4px 16px rgba(0,0,0,0.06);transition:transform 0.3s;overflow:hidden;cursor:pointer}
.hero-thumb:hover{transform:translateY(-4px)}
.hero-thumb img{width:100%;height:120px;object-fit:contain;margin-bottom:12px;transition:transform 0.3s ease}
.hero-thumb:hover img{transform:scale(1.15)}
.hero-thumb .name{font-size:0.78rem;font-weight:500;margin-bottom:4px}
.hero-thumb .price{font-size:0.72rem;color:#999}
.hero-thumb-circle{width:100px;height:100px;border-radius:50%;background:#d8e8cc;display:flex;align-items:center;justify-content:center;overflow:hidden;margin-left:auto;cursor:pointer}
.hero-thumb-circle img{width:80px;height:80px;object-fit:cover;border-radius:50%;transition:transform 0.3s ease}
.hero-thumb-circle:hover img{transform:scale(1.2)}

.popular{padding:100px 0;background:#fff}
.popular-header{display:flex;align-items:center;justify-content:space-between;margin-bottom:56px}
.section-title{font-family:'Playfair Display',serif;font-size:2.6rem;font-weight:500;color:#1a1a1a}
.arrows{display:flex;gap:12px}
.arrows span{display:inline-flex;align-items:center;justify-content:center;width:44px;height:44px;border:1px solid #1a1a1a;border-radius:50%;cursor:pointer;font-size:1.1rem;transition:all 0.2s}
.arrows span:hover{background:#1a1a1a;color:#fff}
.product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:28px}
.product-card{background:#f8faf5;border-radius:12px;padding:20px;text-align:center;transition:transform 0.3s,box-shadow 0.3s;cursor:pointer;overflow:hidden}
.product-card:hover{transform:translateY(-6px);box-shadow:0 12px 40px rgba(0,0,0,0.1)}
.product-card img{width:100%;height:160px;object-fit:contain;margin-bottom:14px;transition:transform 0.3s ease;border-radius:8px;background:#f0f5e8}
.product-card:hover img{transform:scale(1.1)}
.product-card .label{font-size:0.68rem;font-weight:600;letter-spacing:0.2em;text-transform:uppercase;color:#c9a36a;margin-bottom:8px}
.product-card .pname{font-family:'Playfair Display',serif;font-size:1.15rem;font-weight:500;margin-bottom:8px}
.product-card .stars{font-size:0.75rem;color:#c9a36a;margin-bottom:8px;letter-spacing:2px}
.product-card .pprice{font-size:1rem;font-weight:600;color:#1a1a1a}

.why-us{padding:100px 0;background:#eaf5e0}
.why-grid{display:grid;grid-template-columns:1fr 1fr;gap:80px;align-items:center}
.why-image{background:#fff;border-radius:16px;overflow:hidden;box-shadow:0 8px 40px rgba(0,0,0,0.08);cursor:pointer;transition:transform 0.3s}
.why-image:hover{transform:scale(1.02)}
.why-image img{width:100%;height:100%;object-fit:cover;display:block;aspect-ratio:1/1}
.why-content h2{font-family:'Playfair Display',serif;font-size:2.4rem;font-weight:500;margin-bottom:40px;line-height:1.2}
.why-list{list-style:none;display:flex;flex-direction:column;gap:20px}
.why-list li{display:flex;align-items:center;justify-content:space-between;padding:16px 0;border-bottom:1px solid rgba(0,0,0,0.08);font-size:0.95rem}
.why-list li .icon{width:24px;height:24px;border-radius:50%;background:#c9a36a;color:#fff;display:flex;align-items:center;justify-content:center;font-size:0.8rem;font-weight:600}

.features{padding:100px 0;background:#1a1a1a;color:#fff}
.features-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:28px}
.feature-card{padding:40px;border-radius:12px;transition:transform 0.3s}
.feature-card.dark{background:#252525}
.feature-card.light{background:#2d2d2d}
.feature-card:hover{transform:translateY(-4px)}
.feature-card h3{font-family:'Playfair Display',serif;font-size:1.6rem;font-weight:500;margin-bottom:16px}
.feature-card p{font-size:0.88rem;color:#999;line-height:1.8;margin-bottom:28px}
.feature-card .btn{background:#c9a36a;color:#fff;border:none;font-size:0.75rem}
.feature-card .btn:hover{background:#b08d52}

.our-products{padding:100px 0;background:#fff}
.product-grid-6{display:grid;grid-template-columns:repeat(6,1fr);gap:20px;margin-top:56px}
.product-grid-6 .product-card img{height:140px}

.experience{padding:100px 0;background:#eaf5e0}
.exp-grid{display:grid;grid-template-columns:1fr 1fr;gap:80px;align-items:center}
.exp-image{background:#fff;border-radius:16px;overflow:hidden;box-shadow:0 8px 40px rgba(0,0,0,0.08);cursor:pointer;transition:transform 0.3s}
.exp-image:hover{transform:scale(1.02)}
.exp-image img{width:100%;height:100%;object-fit:cover;display:block;aspect-ratio:1/1}
.exp-content h2{font-family:'Playfair Display',serif;font-size:2.4rem;font-weight:500;margin-bottom:20px;line-height:1.2}
.exp-content p{font-size:0.95rem;color:#666;margin-bottom:36px;line-height:1.8}
.exp-content .btn{background:#1a1a1a;color:#fff;border:none}

footer{background:#1a1a1a;color:#888;padding:40px 0;text-align:center}
footer p{font-size:0.8rem;letter-spacing:0.05em}

@media(max-width:1100px){.product-grid{grid-template-columns:repeat(2,1fr)}; .product-grid-6{grid-template-columns:repeat(3,1fr)}}
@media(max-width:768px){.hero-main{flex-direction:column}; .why-grid,.exp-grid{grid-template-columns:1fr}; .product-grid,.product-grid-6,.features-grid{grid-template-columns:1fr}}
</style>
</head>
<body>

<header>
<div class="header-inner">
<a href="#" class="logo">ЖАМЕР</a>
<nav>
<ul>
<li><a href="#popular">Коллекция</a></li>
<li><a href="#why">О бренде</a></li>
<li><a href="#experience">Контакты</a></li>
</ul>
</nav>
<div class="header-icons">
<a href="#">&#128269;</a>
<a href="#">&#128722;</a>
</div>
</div>
</header>

<section class="hero">
<div class="hero-main">
<div class="hero-text">
<h1>Властвуй над временем</h1>
<p>Откройте для себя эксклюзивную коллекцию премиальных часов. Созданы с точностью, воплощают элегантность.</p>
<div class="hero-cta">
<a href="#popular" class="btn btn-primary">В каталог</a>
<a href="#why" class="btn btn-ghost">О бренде</a>
</div>
</div>
<div class="hero-visual">
<div class="hero-thumb">
<img src="images/004.png" alt="Классические часы">
<div class="name">АУРЕЛИУС</div>
<div class="price">$299.00</div>
</div>
<div class="hero-thumb" style="margin-top:40px;">
<img src="images/005.png" alt="Золотые часы">
<div class="name">ВАНГАРД</div>
<div class="price">$349.00</div>
</div>
<div class="hero-thumb-circle">
<img src="images/007.png" alt="Деталь часов">
</div>
</div>
</div>
</section>

<section class="popular" id="popular">
<div class="container">
<div class="popular-header">
<h2 class="section-title">Популярные модели</h2>
<div class="arrows"><span>&#8592;</span><span>&#8594;</span></div>
</div>
<div class="product-grid">
<div class="product-card">
<img src="images/006.png" alt="Спортивные часы">
<div class="label">Спорт</div>
<div class="pname">Аврора Спорт</div>
<div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div>
<div class="pprice">$529.00</div>
</div>
<div class="product-card">
<img src="images/009.png" alt="Хронограф">
<div class="label">Наследие</div>
<div class="pname">Вангард II</div>
<div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div>
<div class="pprice">$399.00</div>
</div>
<div class="product-card">
<img src="images/008.png" alt="Розовые часы">
<div class="label">Модерн</div>
<div class="pname">Меридиан Золото</div>
<div class="stars">&#9733; &#9733; &#9733; &#9733; &#9734;</div>
<div class="pprice">$459.00</div>
</div>
<div class="product-card">
<img src="images/004.png" alt="Классические часы">
<div class="label">Классика</div>
<div class="pname">Аурелиус Хроно</div>
<div class="stars">&#9733; &#9733; &#9733; &#9733; &#9734;</div>
<div class="pprice">$299.00</div>
</div>
</div>
</div>
</section>

<section class="why-us" id="why">
<div class="container">
<div class="why-grid">
<div class="why-image">
<img src="images/009.png" alt="Мастерская ЖАМЕР">
</div>
<div class="why-content">
<h2>Почему выбирают нас</h2>
<ul class="why-list">
<li><span>Невероятное качество</span><span class="icon">+</span></li>
<li><span>Широкий выбор</span><span class="icon">+</span></li>
<li><span>Устойчивое производство</span><span class="icon">+</span></li>
<li><span>Наследие мастерства</span><span class="icon">+</span></li>
</ul>
</div>
</div>
</div>
</section>

<section class="features">
<div class="container">
<div class="features-grid">
<div class="feature-card dark">
<h3>Инновационный дизайн</h3>
<p>Наши часы сочетают вневременную эстетику и современные инженерные решения, создавая модели, которые выстоят перед лицом времени.</p>
<a href="#" class="btn">Подробнее</a>
</div>
<div class="feature-card light">
<h3>Передовые технологии</h3>
<p>Каждая модель оснащена передовыми швейцарскими механизмами и прецизионными компонентами для максимальной точности.</p>
<a href="#" class="btn">Подробнее</a>
</div>
<div class="feature-card light">
<h3>Исключительное качество</h3>
<p>Ручная сборка мастерами с использованием самых высококачественных материалов: сапфирового стекла, титана и натуральной кожи.</p>
<a href="#" class="btn">Подробнее</a>
</div>
</div>
</div>
</section>

<section class="our-products">
<div class="container">
<h2 class="section-title" style="text-align:center">Наша продукция</h2>
<div class="product-grid-6">
<div class="product-card"><img src="images/007.png" alt="Эклипс"><div class="label">Минимализм</div><div class="pname">Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9734;</div><div class="pprice">$279.00</div></div>
<div class="product-card"><img src="images/004.png" alt="Белый Эклипс"><div class="label">Наследие</div><div class="pname">Белый Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$349.00</div></div>
<div class="product-card"><img src="images/005.png" alt="Один Эклипс"><div class="label">Классика</div><div class="pname">Один Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$399.00</div></div>
<div class="product-card"><img src="images/006.png" alt="Одинокий Эклипс"><div class="label">Спорт</div><div class="pname">Одинокий Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9734;</div><div class="pprice">$319.00</div></div>
<div class="product-card"><img src="images/008.png" alt="Закат Эклипс"><div class="label">Модерн</div><div class="pname">Закат Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$289.00</div></div>
<div class="product-card"><img src="images/009.png" alt="Черный Эклипс"><div class="label">Лимитированная</div><div class="pname">Черный Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$429.00</div></div>
</div>
</div>
</section>

<section class="experience" id="experience">
<div class="container">
<div class="exp-grid">
<div class="exp-image">
<img src="images/005.png" alt="Часы ЖАМЕР">
</div>
<div class="exp-content">
<h2>Погрузитесь в сияние часов ЖАМЕР</h2>
<p>Изысканная коллекция, которая подчеркнет каждый ваш миг.</p>
<a href="#" class="btn btn-primary">Смотреть</a>
</div>
</div>
</div>
</section>

<footer>
<div class="container">
<p>&copy; 2026 ЖАМЕР. Все права защищены. Работа с душой.</p>
</div>
</footer>

</body>
</html>
"@

$utf8 = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($f, $html, $utf8)
Write-Host "Step 2 done. Size: $((Get-Item $f).Length)"
Write-Host "IMG count: $(([regex]::Matches($html, '<img src')).Count)"

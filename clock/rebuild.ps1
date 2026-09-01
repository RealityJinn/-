$ErrorActionPreference = 'Continue'
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::UTF8

$f = 'C:\Users\John Carter\Desktop\Antigravity\clock\index.html'

# Premium SVG clocks
$classic = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200" width="100%" height="100%"><defs><radialGradient id="g1c" cx="50%" cy="40%"><stop offset="0%" stop-color="#fafafa"/><stop offset="100%" stop-color="#e8e8e8"/></radialGradient></defs><circle cx="100" cy="100" r="86" fill="url(#g1c)" stroke="#1a1a1a" stroke-width="1.5"/><circle cx="100" cy="100" r="78" fill="none" stroke="#c9a36a" stroke-width="0.5"/><g stroke="#1a1a1a" stroke-linecap="round"><line x1="100" y1="22" x2="100" y2="32" stroke-width="2"/><line x1="100" y1="168" x2="100" y2="178" stroke-width="2"/><line x1="22" y1="100" x2="32" y2="100" stroke-width="2"/><line x1="168" y1="100" x2="178" y2="100" stroke-width="2"/><line x1="42" y1="42" x2="49" y2="49" stroke-width="1.2"/><line x1="158" y1="42" x2="151" y2="49" stroke-width="1.2"/><line x1="42" y1="158" x2="49" y2="151" stroke-width="1.2"/><line x1="158" y1="158" x2="151" y2="151" stroke-width="1.2"/></g><g font-family="Cormorant Garamond,serif" font-size="13" fill="#1a1a1a" text-anchor="middle" font-weight="500"><text x="100" y="50">XII</text><text x="160" y="104">III</text><text x="100" y="160">VI</text><text x="40" y="104">IX</text></g><line x1="100" y1="100" x2="100" y2="48" stroke="#1a1a1a" stroke-width="3.5" stroke-linecap="round"/><line x1="100" y1="100" x2="138" y2="100" stroke="#1a1a1a" stroke-width="2.5" stroke-linecap="round"/><line x1="100" y1="100" x2="118" y2="142" stroke="#c9a36a" stroke-width="0.8" stroke-linecap="round"/><circle cx="100" cy="100" r="3.5" fill="#1a1a1a"/><text x="100" y="118" font-family="Cormorant Garamond,serif" font-size="5" fill="#888" text-anchor="middle" letter-spacing="2">JAMER</text></svg>'

$gold = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200" width="100%" height="100%"><circle cx="100" cy="100" r="86" fill="#fdf8ec" stroke="#c9a36a" stroke-width="2.5"/><circle cx="100" cy="100" r="78" fill="none" stroke="#c9a36a" stroke-width="0.5"/><g stroke="#8b6f47" stroke-linecap="round"><line x1="100" y1="24" x2="100" y2="36" stroke-width="2.5"/><line x1="100" y1="164" x2="100" y2="176" stroke-width="2.5"/><line x1="24" y1="100" x2="36" y2="100" stroke-width="2.5"/><line x1="164" y1="100" x2="176" y2="100" stroke-width="2.5"/><circle cx="140" cy="60" r="1.5" fill="#8b6f47"/><circle cx="60" cy="60" r="1.5" fill="#8b6f47"/><circle cx="140" cy="140" r="1.5" fill="#8b6f47"/><circle cx="60" cy="140" r="1.5" fill="#8b6f47"/></g><g font-family="Cormorant Garamond,serif" font-size="16" fill="#8b6f47" text-anchor="middle" font-weight="600"><text x="100" y="52">XII</text><text x="158" y="106">III</text><text x="100" y="158">VI</text><text x="42" y="106">IX</text></g><line x1="100" y1="100" x2="100" y2="46" stroke="#1a1a1a" stroke-width="3" stroke-linecap="round"/><line x1="100" y1="100" x2="140" y2="100" stroke="#1a1a1a" stroke-width="2" stroke-linecap="round"/><line x1="100" y1="100" x2="122" y2="138" stroke="#c9a36a" stroke-width="0.8" stroke-linecap="round"/><circle cx="100" cy="100" r="3" fill="#8b6f47"/></svg>'

$sport = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200" width="100%" height="100%"><circle cx="100" cy="100" r="88" fill="#0d0d0d" stroke="#2a2a2a" stroke-width="1"/><circle cx="100" cy="100" r="80" fill="#1a1a1a"/><circle cx="100" cy="100" r="76" fill="none" stroke="#c9a36a" stroke-width="0.3"/><circle cx="100" cy="100" r="38" fill="none" stroke="#3a3a3a" stroke-width="0.5"/><g stroke="#e8e8e8" stroke-linecap="round"><line x1="100" y1="28" x2="100" y2="38" stroke-width="2.5"/><line x1="100" y1="162" x2="100" y2="172" stroke-width="2.5"/><line x1="28" y1="100" x2="38" y2="100" stroke-width="2.5"/><line x1="162" y1="100" x2="172" y2="100" stroke-width="2.5"/></g><g font-family="Montserrat,sans-serif" font-size="11" fill="#e8e8e8" text-anchor="middle" font-weight="600"><text x="100" y="52">12</text><text x="158" y="105">3</text><text x="100" y="160">6</text><text x="42" y="105">9</text></g><line x1="100" y1="100" x2="100" y2="50" stroke="#fff" stroke-width="3" stroke-linecap="round"/><line x1="100" y1="100" x2="134" y2="100" stroke="#fff" stroke-width="2.2" stroke-linecap="round"/><line x1="100" y1="100" x2="120" y2="140" stroke="#ff6b35" stroke-width="1" stroke-linecap="round"/><circle cx="100" cy="100" r="3" fill="#c9a36a"/><circle cx="100" cy="100" r="1.5" fill="#0d0d0d"/></svg>'

$minimal = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200" width="100%" height="100%"><circle cx="100" cy="100" r="88" fill="#ffffff" stroke="#1a1a1a" stroke-width="0.8"/><circle cx="100" cy="100" r="84" fill="none" stroke="#e0e0e0" stroke-width="0.3"/><g fill="#1a1a1a"><circle cx="100" cy="28" r="2.2"/><circle cx="172" cy="100" r="2.2"/><circle cx="100" cy="172" r="2.2"/><circle cx="28" cy="100" r="2.2"/></g><g fill="#888"><circle cx="147" cy="53" r="1"/><circle cx="147" cy="147" r="1"/><circle cx="53" cy="147" r="1"/><circle cx="53" cy="53" r="1"/></g><line x1="100" y1="100" x2="100" y2="42" stroke="#1a1a1a" stroke-width="2.5" stroke-linecap="round"/><line x1="100" y1="100" x2="150" y2="100" stroke="#1a1a1a" stroke-width="1.5" stroke-linecap="round"/><line x1="100" y1="100" x2="118" y2="138" stroke="#c9a36a" stroke-width="0.6" stroke-linecap="round"/><circle cx="100" cy="100" r="2.5" fill="#1a1a1a"/></svg>'

$rose = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200" width="100%" height="100%"><circle cx="100" cy="100" r="86" fill="#fce4ec" stroke="#d4788c" stroke-width="2.5"/><circle cx="100" cy="100" r="78" fill="none" stroke="#d4788c" stroke-width="0.4"/><g stroke="#a04050" stroke-linecap="round"><line x1="100" y1="24" x2="100" y2="36" stroke-width="2.5"/><line x1="100" y1="164" x2="100" y2="176" stroke-width="2.5"/><line x1="24" y1="100" x2="36" y2="100" stroke-width="2.5"/><line x1="164" y1="100" x2="176" y2="100" stroke-width="2.5"/><circle cx="145" cy="55" r="1.5" fill="#a04050"/><circle cx="55" cy="55" r="1.5" fill="#a04050"/><circle cx="145" cy="145" r="1.5" fill="#a04050"/><circle cx="55" cy="145" r="1.5" fill="#a04050"/></g><g font-family="Cormorant Garamond,serif" font-size="14" fill="#a04050" text-anchor="middle" font-weight="500" font-style="italic"><text x="100" y="52">XII</text><text x="158" y="106">III</text><text x="100" y="158">VI</text><text x="42" y="106">IX</text></g><line x1="100" y1="100" x2="100" y2="48" stroke="#1a1a1a" stroke-width="2.5" stroke-linecap="round"/><line x1="100" y1="100" x2="138" y2="100" stroke="#1a1a1a" stroke-width="1.8" stroke-linecap="round"/><line x1="100" y1="100" x2="122" y2="138" stroke="#d4788c" stroke-width="0.6" stroke-linecap="round"/><circle cx="100" cy="100" r="3" fill="#a04050"/></svg>'

$chrono = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200" width="100%" height="100%"><circle cx="100" cy="100" r="88" fill="#0a0a0a" stroke="#c9a36a" stroke-width="1.5"/><circle cx="100" cy="100" r="80" fill="#1a1a1a"/><circle cx="100" cy="100" r="80" fill="none" stroke="#c9a36a" stroke-width="0.4"/><circle cx="60" cy="100" r="14" fill="none" stroke="#3a3a3a" stroke-width="0.5"/><circle cx="140" cy="100" r="14" fill="none" stroke="#3a3a3a" stroke-width="0.5"/><circle cx="100" cy="60" r="14" fill="none" stroke="#3a3a3a" stroke-width="0.5"/><circle cx="100" cy="140" r="14" fill="none" stroke="#3a3a3a" stroke-width="0.5"/><g stroke="#c9a36a" stroke-linecap="round"><line x1="100" y1="28" x2="100" y2="36" stroke-width="1.5"/><line x1="100" y1="164" x2="100" y2="172" stroke-width="1.5"/><line x1="28" y1="100" x2="36" y2="100" stroke-width="1.5"/><line x1="164" y1="100" x2="172" y2="100" stroke-width="1.5"/></g><g font-family="Montserrat,sans-serif" font-size="9" fill="#c9a36a" text-anchor="middle" font-weight="600"><text x="100" y="48">12</text><text x="158" y="103">3</text><text x="100" y="158">6</text><text x="42" y="103">9</text></g><line x1="100" y1="100" x2="100" y2="48" stroke="#fff" stroke-width="2.5" stroke-linecap="round"/><line x1="100" y1="100" x2="140" y2="100" stroke="#fff" stroke-width="1.8" stroke-linecap="round"/><line x1="100" y1="100" x2="122" y2="140" stroke="#c9a36a" stroke-width="0.7" stroke-linecap="round"/><circle cx="100" cy="100" r="3" fill="#c9a36a"/><text x="100" y="115" font-family="Montserrat,sans-serif" font-size="3.5" fill="#c9a36a" text-anchor="middle" letter-spacing="2.5">JAMER</text></svg>'

$html = @"
<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ЖАМЕР — Премиальные часы</title>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,400&family=Montserrat:wght@300;400;500;600&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
body{font-family:'Montserrat',sans-serif;background:#eaf5e0;color:#1a1a1a;line-height:1.6}
.container{max-width:1200px;margin:0 auto;padding:0 24px}

header{background:#eaf5e0;padding:20px 0;border-bottom:1px solid rgba(0,0,0,0.05);position:sticky;top:0;z-index:100}
.header-inner{display:flex;align-items:center;justify-content:space-between;max-width:1200px;margin:0 auto;padding:0 24px}
.logo{font-family:'Cormorant Garamond',serif;font-size:1.6rem;font-weight:500;letter-spacing:0.3em;text-decoration:none;color:#1a1a1a}
nav ul{display:flex;gap:40px;list-style:none}
nav a{text-decoration:none;color:#555;font-size:0.85rem;font-weight:400;letter-spacing:0.15em;text-transform:uppercase;transition:color 0.2s}
nav a:hover{color:#1a1a1a}
.header-icons{display:flex;gap:20px;align-items:center}
.header-icons a{color:#555;text-decoration:none;font-size:1.1rem}

.hero{background:#eaf5e0;padding:60px 0 100px}
.hero-main{display:flex;align-items:center;justify-content:space-between;max-width:1200px;margin:0 auto;padding:0 24px;gap:40px}
.hero-text{flex:1;max-width:540px}
.hero-text h1{font-family:'Cormorant Garamond',serif;font-size:4rem;font-weight:400;line-height:1.05;margin-bottom:28px;color:#1a1a1a;letter-spacing:0.02em}
.hero-text p{font-size:0.95rem;color:#666;margin-bottom:40px;line-height:1.8;font-weight:300}
.hero-cta{display:flex;gap:16px}
.btn{display:inline-flex;align-items:center;padding:16px 32px;font-size:0.78rem;font-weight:500;letter-spacing:0.18em;text-transform:uppercase;border-radius:2px;cursor:pointer;text-decoration:none;transition:all 0.25s}
.btn-primary{background:#1a1a1a;color:#fff;border:none}
.btn-primary:hover{background:#333}
.btn-ghost{background:transparent;color:#1a1a1a;border:1px solid #1a1a1a}
.btn-ghost:hover{background:#1a1a1a;color:#fff}

.hero-visual{flex:1;display:flex;justify-content:flex-end;align-items:center;gap:20px}
.hero-thumb{background:#fff;border-radius:12px;padding:16px;text-align:center;box-shadow:0 4px 20px rgba(0,0,0,0.06);transition:transform 0.3s;width:160px;overflow:hidden}
.hero-thumb:hover{transform:translateY(-6px)}
.hero-thumb svg{width:100%;height:130px;display:block;margin-bottom:12px}
.hero-thumb .name{font-size:0.78rem;font-weight:600;margin-bottom:4px;letter-spacing:0.08em}
.hero-thumb .price{font-size:0.72rem;color:#999}

.hero-thumb-circle{width:120px;height:120px;border-radius:50%;background:#d8e8cc;display:flex;align-items:center;justify-content:center;overflow:hidden;flex-shrink:0}
.hero-thumb-circle svg{width:100%!important;height:100%!important}

.popular{padding:100px 0;background:#fff}
.popular-header{display:flex;align-items:center;justify-content:space-between;margin-bottom:56px}
.section-title{font-family:'Cormorant Garamond',serif;font-size:2.6rem;font-weight:400;color:#1a1a1a;letter-spacing:0.02em}
.arrows{display:flex;gap:12px}
.arrows span{display:inline-flex;align-items:center;justify-content:center;width:44px;height:44px;border:1px solid #1a1a1a;border-radius:50%;cursor:pointer;font-size:1.1rem;transition:all 0.2s}
.arrows span:hover{background:#1a1a1a;color:#fff}
.product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:28px}
.product-card{background:#f8faf5;border-radius:12px;padding:20px;text-align:center;transition:transform 0.3s,box-shadow 0.3s}
.product-card:hover{transform:translateY(-6px);box-shadow:0 12px 40px rgba(0,0,0,0.1)}
.product-card svg{width:100%;height:160px;display:block;margin-bottom:14px}
.product-card .label{font-size:0.68rem;font-weight:600;letter-spacing:0.2em;text-transform:uppercase;color:#c9a36a;margin-bottom:8px}
.product-card .pname{font-family:'Cormorant Garamond',serif;font-size:1.15rem;font-weight:500;margin-bottom:8px}
.product-card .stars{font-size:0.75rem;color:#c9a36a;margin-bottom:8px;letter-spacing:2px}
.product-card .pprice{font-size:1rem;font-weight:600;color:#1a1a1a}

.why-us{padding:100px 0;background:#eaf5e0}
.why-grid{display:grid;grid-template-columns:1fr 1fr;gap:80px;align-items:center}
.why-image{background:#fff;border-radius:16px;overflow:hidden;box-shadow:0 8px 40px rgba(0,0,0,0.08);aspect-ratio:1;display:flex;align-items:center;justify-content:center}
.why-image svg{width:100%!important;height:100%!important;max-width:400px}
.why-content h2{font-family:'Cormorant Garamond',serif;font-size:2.4rem;font-weight:400;margin-bottom:40px;line-height:1.2}
.why-list{list-style:none;display:flex;flex-direction:column;gap:20px}
.why-list li{display:flex;align-items:center;justify-content:space-between;padding:16px 0;border-bottom:1px solid rgba(0,0,0,0.08);font-size:0.95rem;font-weight:400}
.why-list li .icon{width:24px;height:24px;border-radius:50%;background:#c9a36a;color:#fff;display:flex;align-items:center;justify-content:center;font-size:0.8rem;font-weight:600}

.features{padding:100px 0;background:#1a1a1a;color:#fff}
.features-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:28px}
.feature-card{padding:40px;border-radius:12px;transition:transform 0.3s}
.feature-card.dark{background:#252525}
.feature-card.light{background:#2d2d2d}
.feature-card:hover{transform:translateY(-4px)}
.feature-card h3{font-family:'Cormorant Garamond',serif;font-size:1.6rem;font-weight:400;margin-bottom:16px}
.feature-card p{font-size:0.88rem;color:#999;line-height:1.8;margin-bottom:28px;font-weight:300}
.feature-card .btn{background:#c9a36a;color:#fff;border:none;font-size:0.75rem}
.feature-card .btn:hover{background:#b08d52}

.our-products{padding:100px 0;background:#fff}
.product-grid-6{display:grid;grid-template-columns:repeat(6,1fr);gap:20px;margin-top:56px}
.product-grid-6 .product-card svg{height:140px}

.experience{padding:100px 0;background:#eaf5e0}
.exp-grid{display:grid;grid-template-columns:1fr 1fr;gap:80px;align-items:center}
.exp-image{background:#fff;border-radius:16px;overflow:hidden;box-shadow:0 8px 40px rgba(0,0,0,0.08);aspect-ratio:1;display:flex;align-items:center;justify-content:center}
.exp-image svg{width:100%!important;height:100%!important;max-width:400px}
.exp-content h2{font-family:'Cormorant Garamond',serif;font-size:2.4rem;font-weight:400;margin-bottom:20px;line-height:1.2}
.exp-content p{font-size:0.95rem;color:#666;margin-bottom:36px;line-height:1.8;font-weight:300}

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
<nav><ul><li><a href="#popular">Коллекция</a></li><li><a href="#why">О бренде</a></li><li><a href="#experience">Контакты</a></li></ul></nav>
<div class="header-icons"><a href="#">&#128269;</a><a href="#">&#128722;</a></div>
</div>
</header>

<section class="hero">
<div class="hero-main">
<div class="hero-text">
<h1>Властвуй над временем</h1>
<p>Откройте для себя эксклюзивную коллекцию премиальных часов. Созданы с точностью, воплощают элегантность.</p>
<div class="hero-cta"><a href="#popular" class="btn btn-primary">В каталог</a><a href="#why" class="btn btn-ghost">О бренде</a></div>
</div>
<div class="hero-visual">
<div class="hero-thumb">$classic<div class="name">Классик</div><div class="price">$299</div></div>
<div class="hero-thumb" style="margin-top:50px">$gold<div class="name">Аурелиус</div><div class="price">$349</div></div>
<div class="hero-thumb-circle">$minimal</div>
</div>
</div>
</section>

<section class="popular" id="popular">
<div class="container">
<div class="popular-header"><h2 class="section-title">Популярные модели</h2><div class="arrows"><span>&#8592;</span><span>&#8594;</span></div></div>
<div class="product-grid">
<div class="product-card">$sport<div class="label">Спорт</div><div class="pname">Аврора Спорт</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$529</div></div>
<div class="product-card">$chrono<div class="label">Наследие</div><div class="pname">Вангард II</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$399</div></div>
<div class="product-card">$rose<div class="label">Модерн</div><div class="pname">Меридиан Золото</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9734;</div><div class="pprice">$459</div></div>
<div class="product-card">$classic<div class="label">Классика</div><div class="pname">Аурелиус Хроно</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9734;</div><div class="pprice">$299</div></div>
</div>
</div>
</section>

<section class="why-us" id="why">
<div class="container">
<div class="why-grid">
<div class="why-image">$chrono</div>
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
<div class="product-card">$minimal<div class="label">Минимализм</div><div class="pname">Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9734;</div><div class="pprice">$279</div></div>
<div class="product-card">$classic<div class="label">Наследие</div><div class="pname">Белый Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$349</div></div>
<div class="product-card">$gold<div class="label">Классика</div><div class="pname">Один Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$399</div></div>
<div class="product-card">$sport<div class="label">Спорт</div><div class="pname">Одинокий Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9734;</div><div class="pprice">$319</div></div>
<div class="product-card">$rose<div class="label">Модерн</div><div class="pname">Закат Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$289</div></div>
<div class="product-card">$chrono<div class="label">Лимитированная</div><div class="pname">Черный Эклипс</div><div class="stars">&#9733; &#9733; &#9733; &#9733; &#9733;</div><div class="pprice">$429</div></div>
</div>
</div>
</section>

<section class="experience" id="experience">
<div class="container">
<div class="exp-grid">
<div class="exp-image">$gold</div>
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
Write-Host "Written: $f"
Write-Host "Size: $((Get-Item $f).Length)"
Write-Host "SVG count: $(([regex]::Matches($html, '<svg xmlns')).Count)"

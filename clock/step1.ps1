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
.hero-thumb{width:160px;background:#f0f5e8;border-radius:8px;padding:16px;text-align:center;box-shadow:0 4px 16px rgba(0,0,0,0.06);transition:transform 0.3s;overflow:hidden}
.hero-thumb:hover{transform:translateY(-4px)}
.hero-thumb img{width:100%;height:120px;object-fit:contain;margin-bottom:12px;transition:transform 0.3s ease;cursor:pointer}
.hero-thumb:hover img{transform:scale(1.15)}
.hero-thumb .name{font-size:0.78rem;font-weight:500;margin-bottom:4px}
.hero-thumb .price{font-size:0.72rem;color:#999}
.hero-thumb-circle{width:100px;height:100px;border-radius:50%;background:#d8e8cc;display:flex;align-items:center;justify-content:center;overflow:hidden;margin-left:auto}
.hero-thumb-circle img{width:80px;height:80px;object-fit:cover;border-radius:50%;transition:transform 0.3s ease;cursor:pointer}
.hero-thumb-circle:hover img{transform:scale(1.2)}
</style>
</head>
<body>

<header>
<div class="header-inner">
<a href="#" class="logo">ЖАМЕР</a>
<nav>
<ul>
<li><a href="#collection">Коллекция</a></li>
<li><a href="#about">О бренде</a></li>
<li><a href="#contact">Контакты</a></li>
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
<a href="#collection" class="btn btn-primary">В каталог</a>
<a href="#about" class="btn btn-ghost">О бренде</a>
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

<p style="text-align:center;padding:80px;font-size:20px;color:#666;">
ГОТОВО. Сайт ЖАМЕР в минималистичном стиле.
</p>

</body>
</html>
"@

$utf8 = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($f, $html, $utf8)
Write-Host "Step 1 done. Size: $((Get-Item $f).Length)"

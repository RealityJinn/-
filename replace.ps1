$f = 'C:\Users\John Carter\Desktop\Antigravity\clock\index.html'
$imgDir = 'C:\Users\John Carter\Desktop\Antigravity\clock\images'
[Console]::OutputEncoding = [System.Text.UTF8Encoding]::UTF8

# Read current HTML
$html = [System.IO.File]::ReadAllText($f, [System.Text.UTF8Encoding]::new($false))

# Map of images to use (we have 8, will distribute to 12 slots)
# 004 = classic, 005 = gold, 006 = sport, 007 = minimal, 008 = rose, 009 = chrono, 010 = extra, 011 = extra
$imgs = @{
  'classic' = '004.png'
  'gold'    = '005.png'
  'sport'   = '006.png'
  'minimal' = '007.png'
  'rose'    = '008.png'
  'chrono'  = '009.png'
  'extra1'  = '010.png'
  'extra2'  = '011.png'
}

# Update CSS to handle img tags
$cssAdd = "`.hero-thumb img,`.hero-thumb-circle img,`.product-card img,`.why-image img,`.exp-image img{width:100%;height:100%;object-fit:cover;display:block;border-radius:inherit}`.hero-thumb img{height:130px;object-fit:contain;background:#f8faf5;border-radius:8px}`.product-card img{height:160px;object-fit:contain;background:#f8faf5;margin-bottom:14px;border-radius:8px}`.product-grid-6 .product-card img{height:140px;object-fit:contain;background:#f8faf5;margin-bottom:14px;border-radius:8px}`.hero-thumb-circle img{width:100px;height:100px;object-fit:cover;border-radius:50%}`.why-image img,`.exp-image img{object-fit:cover;border-radius:16px}"

$i = $html.LastIndexOf('</style>')
if ($i -gt 0) { $html = $html.Insert($i, $cssAdd) }

# Replace each SVG block (the watch-content was direct SVG) with <img>
# Pattern: from <div class="X">$svg</div>  - we need to replace SVG with img
# Use regex to find all <svg...>...</svg> blocks inside product containers
$patterns = @{
  '<div class="hero-thumb">([\s\S]*?)(<svg[\s\S]*?</svg>)([\s\S]*?)<div class="name">' = '<div class="hero-thumb"><img src="images/REPLACE" alt="REPLACE_NAME"><div class="name">'
  '<div class="hero-thumb" style="margin-top:50px">([\s\S]*?)(<svg[\s\S]*?</svg>)([\s\S]*?)<div class="name">' = '<div class="hero-thumb" style="margin-top:50px"><img src="images/REPLACE" alt="REPLACE_NAME"><div class="name">'
  '<div class="hero-thumb-circle">([\s\S]*?)(<svg[\s\S]*?</svg>)([\s\S]*?)</div>' = '<div class="hero-thumb-circle"><img src="images/REPLACE" alt="REPLACE_NAME"></div>'
}

# Direct approach: replace each watch by finding SVG with id
# Actually simpler: replace known order
# 1. hero-thumb 1 = classic
$html = $html.Replace('hero-thumb"><svg', 'hero-thumb"><IMGPLACEHOLDER_classic<svg')
# etc - too complex. Let me use a cleaner approach: replace all <svg>...</svg> in order
$svgs = [regex]::Matches($html, '<svg xmlns="http://www\.w3\.org/2000/svg"[\s\S]*?</svg>')
Write-Host "Found $($svgs.Count) SVGs to replace"

# Map: order of watches as they appear in HTML
# 1. classic (hero thumb 1)
# 2. gold (hero thumb 2)
# 3. minimal (hero circle)
# 4. sport (popular 1)
# 5. chrono (popular 2)
# 6. rose (popular 3)
# 7. classic (popular 4)
# 8. chrono (why image)
# 9. minimal (catalog 1)
# 10. classic (catalog 2)
# 11. gold (catalog 3)
# 12. sport (catalog 4)
# 13. rose (catalog 5)
# 14. chrono (catalog 6)
# 15. gold (exp image)

$order = @('classic','gold','minimal','sport','chrono','rose','classic','chrono','minimal','classic','gold','sport','rose','chrono','gold')

# Replace from end to start to preserve indices
for ($idx = $svgs.Count - 1; $idx -ge 0; $idx--) {
  $m = $svgs[$idx]
  $watch = $order[$idx]
  $imgName = $imgs[$watch]
  $altText = $watch
  $imgTag = '<img src="images/' + $imgName + '" alt="' + $altText + '">'
  $html = $html.Remove($m.Index, $m.Length).Insert($m.Index, $imgTag)
}

# Also fix the specific inline styles
$html = $html.Replace('"><IMGPLACEHOLDER_classic<svg', '"><svg')

# Save
$utf8 = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($f, $html, $utf8)
Write-Host "Final: $((Get-Item $f).Length)"
Write-Host "IMG count: $(([regex]::Matches($html, '<img src="images/')).Count)"
Write-Host "SVG count: $(([regex]::Matches($html, '<svg xmlns')).Count)"

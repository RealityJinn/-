[Console]::OutputEncoding = [System.Text.UTF8Encoding]::UTF8
$f = 'C:\Users\John Carter\Desktop\Antigravity\clock\index.html'
$c = [System.IO.File]::ReadAllText($f, [System.Text.UTF8Encoding]::new($false))

# Use IndexOf + Substring
$lt = [char]60  # <
$gt = [char]62  # >

# Use string patterns without <> to avoid parser issues
$replacements = @(
  @{ Old = 'pname">Аврора Спорт<'; New = 'pname">Аврора<' }
  @{ Old = 'label">Наследие<'; New = 'label">Коллекция<' }
  @{ Old = 'pname">Аурелиус Хроно<'; New = 'pname">Кронус Классик<' }
  @{ Old = 'label">Наследие<'; New = 'label">Элегант<' }
  @{ Old = 'pname">Белый Эклипс<'; New = 'pname">Белый Эклипс<' }
)

# Need to be careful with order — first occurrence vs second
# Use global replace for label/Наследие
$c = $c.Replace('label">Наследие<', 'label">Коллекция<')  # 1st hit (Popular 2)
$c = $c.Replace('label">Наследие<', 'label">Элегант<')    # 2nd hit (Catalog 2)
$c = $c.Replace('pname">Аврора Спорт<', 'pname">Аврора<')
$c = $c.Replace('pname">Аурелиус Хроно<', 'pname">Кронус Классик<')

$utf8 = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($f, $c, $utf8)
Write-Host "Fixed. Size: $((Get-Item $f).Length)"

# Копирует EN-исходники из инстанса модпака в l10n/source
param(
    [string]$ModpackRoot = "C:\Users\Duugrim\AppData\Roaming\PrismLauncher\instances\Society- Sunlit Valley\minecraft",
    [string]$DestRoot = "E:\DEV\sunlit-ru\l10n\en"
)

$ErrorActionPreference = "Stop"
$minecraft = $ModpackRoot

$langDirs = @(
    "kubejs\assets\society\lang",
    "kubejs\assets\society_tips\lang",
    "kubejs\assets\society_skills\lang",
    "kubejs\assets\dialog\lang",
    "kubejs\assets\ftbquestlocalizer\lang"
)

foreach ($d in $langDirs) {
    $dest = Join-Path $DestRoot $d
    New-Item -ItemType Directory -Force -Path $dest | Out-Null
    Get-ChildItem (Join-Path $minecraft $d) -Filter "en_us*.json" | Copy-Item -Destination $dest -Force
}

$pbDestRoot = Join-Path $DestRoot "patchouli_books"
foreach ($book in @("almanac", "fish_finder")) {
    $enSrc = Join-Path $minecraft "patchouli_books\$book\en_us"
    $enDest = Join-Path $pbDestRoot "$book\en_us"
    if (-not (Test-Path $enSrc)) { continue }
    if (Test-Path $enDest) { Remove-Item $enDest -Recurse -Force }
    New-Item -ItemType Directory -Force -Path (Split-Path $enDest) | Out-Null
    Copy-Item $enSrc $enDest -Recurse -Force
}

Write-Host "Synced EN sources -> $DestRoot"

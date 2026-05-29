# Копирует l10n/translated в minecraft инстанса
param(
    [Parameter(Mandatory = $true)]
    [string]$InstancePath,
    [string]$TranslatedRoot = "E:\DEV\sunlit-ru\l10n\translated"
)

$ErrorActionPreference = "Stop"
$minecraft = Join-Path $InstancePath "minecraft"
if (-not (Test-Path $minecraft)) {
    throw "Not found: $minecraft"
}

$srcKubejs = Join-Path $TranslatedRoot "kubejs"
$srcPatchouli = Join-Path $TranslatedRoot "patchouli_books"

if (Test-Path $srcKubejs) {
    Copy-Item (Join-Path $srcKubejs "*") (Join-Path $minecraft "kubejs") -Recurse -Force
}
if (Test-Path $srcPatchouli) {
    Copy-Item (Join-Path $srcPatchouli "*") (Join-Path $minecraft "patchouli_books") -Recurse -Force
}

Write-Host "Installed RU from $TranslatedRoot -> $minecraft"

# Локализация (l10n)

| Папка | Назначение |
|-------|------------|
| **`en/`** | Английские исходники — **не** «source», именно **`en`** |
| **`ru_ru/`** | Русский перевод после PR из GitLocalize |

GitLocalize **не** настраивается одной папкой `source`. Нужны **7 правил** — см. [docs/GITLOCALIZE.md](../docs/GITLOCALIZE.md).

```
Source path (пример одного правила):
  l10n/en/kubejs/assets/society/lang/en_us.json

Translation path:
  l10n/%lang%/kubejs/assets/society/lang/%lang%.json

Код русского языка в GL: ru_ru
```

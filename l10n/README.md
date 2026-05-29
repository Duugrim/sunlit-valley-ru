# Локализация (l10n)

| Папка | Назначение | GitLocalize |
|-------|------------|-------------|
| **`source/`** | Английские исходники (`en_us.json`, Patchouli `en_us/`) | **Source path** |
| **`translated/`** | Русский перевод после ревью (`ru_ru.json`, Patchouli `ru_ru/`) | **Target path** |

В GitLocalize укажите:

```
Source path:  l10n/source
Target path:  l10n/translated
Branch:       master
```

Корень репозитория (`docs/`, `scripts/`, `README.md`) **не** участвует в переводе.

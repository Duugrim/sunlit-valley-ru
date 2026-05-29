# Источники файлов

Все EN-файлы лежат в **`l10n/source/`** (зеркало путей в `minecraft/` инстанса).

## Включено

| Путь в `l10n/source/` | Описание |
|-------------------------|----------|
| `kubejs/assets/society/lang/en_us.json` | Society: tooltips, сообщения |
| `kubejs/assets/society/lang/en_us_template.json` | Шаблон блоков/предметов (каждый релиз) |
| `kubejs/assets/ftbquestlocalizer/lang/en_us.json` | Квесты FTB |
| `kubejs/assets/dialog/lang/en_us.json` | Диалоги NPC |
| `kubejs/assets/society_tips/lang/en_us.json` | Советы на паузе |
| `kubejs/assets/society_skills/lang/en_us.json` | Навыки |
| `patchouli_books/almanac/en_us/**` | Farmer's Almanac |
| `patchouli_books/fish_finder/en_us/**` | Fish Finder |

## Не включено

- Override-локали других модов (`kubejs/assets/MODID/lang`) — см. [вики](https://sunlitvalley.miraheze.org/wiki/Translations)
- `society_trading` — по запросу
- SNBT квестов — только ключи; тексты в `ftbquestlocalizer`

## Синхронизация

```powershell
.\scripts\sync-sources.ps1
```

Копирует EN из инстанса PrismLauncher в `l10n/source/`.

## Черновик RU квестов

`imports/ftbquestlocalizer/lang/ru_ru.json` — для ручного импорта в GitLocalize, не коммитится.

# Источники файлов

Снимок с инстанса модпака и сверка с [Chakyl/society-sunlit-valley](https://github.com/Chakyl/society-sunlit-valley) (ветка `master`).

## Включено

- `kubejs/assets/society/lang/en_us.json` — основной файл Society
- `kubejs/assets/society/lang/en_us_template.json` — шаблон блоков/предметов (генерируется каждый релиз)
- `kubejs/assets/society_tips/lang/en_us.json`
- `kubejs/assets/society_skills/lang/en_us.json`
- `kubejs/assets/dialog/lang/en_us.json`
- `kubejs/assets/ftbquestlocalizer/lang/en_us.json` — квесты (из модпака; в upstream тот же путь)
- `patchouli_books/almanac/en_us/**` — Farmer's Almanac
- `patchouli_books/fish_finder/en_us/**` — Fish Finder

## Не включено (намеренно)

| Что | Почему |
|-----|--------|
| `kubejs/assets/*/lang` других модов | По вики — переводы отсылать авторам модов; в паке сотни override-файлов |
| `kubejs/assets/society_trading/lang` | Не в списке вики; при необходимости — отдельный PR |
| `config/ftbquests/quests/**/*.snbt` | Только ID и ключи `{ftbquests...}`; тексты в `ftbquestlocalizer` |
| `kubejs/assets/ftbquests/lang` | UI мода FTB Quests, не тексты квестов |
| Локали `ko_kr`, `zh_cn`, … | Чужие переводы, не источник |

## Черновик RU квестов

`imports/ftbquestlocalizer/lang/ru_ru.json` — готовый перевод ~1917 строк (локально, в `.gitignore`).

Импорт в GitLocalize — см. [GITLOCALIZE.md](GITLOCALIZE.md).

## Обновление исходников

```powershell
$modpack = "C:\Users\Duugrim\AppData\Roaming\PrismLauncher\instances\Society- Sunlit Valley\minecraft"
$root = "E:\DEV\sunlit-ru"
# повторить копирование en_us* и patchouli en_us — см. скрипт в README репозитория или историю коммитов
```

Либо `git pull` из upstream society-sunlit-valley для совпадающих путей.

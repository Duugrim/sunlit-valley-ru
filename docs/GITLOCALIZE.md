# GitLocalize

## Настройки проекта

1. [gitlocalize.com](https://gitlocalize.com) → GitHub → репозиторий **`Duugrim/sunlit-valley-ru`**
2. Если проект уже был с путём `/` — **удалите и создайте заново** или измените paths в настройках.

| Поле | Значение |
|------|----------|
| Branch | `master` |
| **Source path** | **`l10n/source`** |
| **Target path** | **`l10n/translated`** |
| Source language | English |
| Target language | Russian |

Так GitLocalize **не** будет предлагать переводить `docs/`, `README.md` и `scripts/`.

## Что куда попадает

| Источник | Файл EN | Файл RU (после PR) |
|----------|---------|-------------------|
| Society | `l10n/source/kubejs/assets/society/lang/en_us.json` | `l10n/translated/kubejs/assets/society/lang/ru_ru.json` |
| Квесты | `.../ftbquestlocalizer/lang/en_us.json` | `.../ru_ru.json` |
| Patchouli | `.../patchouli_books/almanac/en_us/...` | `.../patchouli_books/almanac/ru_ru/...` |

## Импорт готового перевода квестов

Локальный файл (не в GitHub):

```
imports/ftbquestlocalizer/lang/ru_ru.json
```

В GitLocalize откройте файл  
`l10n/source/kubejs/assets/ftbquestlocalizer/lang/en_us.json` → язык Russian → импорт / вставка сегментов.

Дальше: **Review Request** → модератор → **Pull Request** в `l10n/translated/...` → merge.

## Роли

- **Translator** — правки в GL, Review Request
- **Language Moderator (ru)** — ревью, PR в GitHub
- **Admin** — настройки репо и GL

## Обновление EN после патча модпака

```powershell
.\scripts\sync-sources.ps1
git add l10n/source
git commit -m "chore: sync EN sources from modpack"
git push
```

GitLocalize подтянет изменения; переводите только новые/изменённые сегменты.

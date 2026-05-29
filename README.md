# Society: Sunlit Valley — русская локализация (RU)

Неофициальный репозиторий для перевода сборки [Society: Sunlit Valley](https://github.com/Chakyl/society-sunlit-valley) на русский язык.

**В `main` только английские исходники (en).** Готовые переводы попадают в репозиторий через [GitLocalize](https://gitlocalize.com) после ревью (Pull Request).

## Что внутри

| Путь | Содержимое | Приоритет (по вики) |
|------|------------|---------------------|
| `kubejs/assets/society/lang/` | Предметы, блоки, подсказки мода Society + `en_us_template.json` | Высший |
| `kubejs/assets/ftbquestlocalizer/lang/` | Тексты квестов FTB Quests | Высокий |
| `kubejs/assets/dialog/lang/` | Диалоги NPC | Высокий |
| `kubejs/assets/society_tips/lang/` | Советы на экране паузы | Средний |
| `kubejs/assets/society_skills/lang/` | Описания навыков | Средний |
| `patchouli_books/almanac/en_us/` | Книга Farmer's Almanac | Средний |
| `patchouli_books/fish_finder/en_us/` | Книга Fish Finder | Средний |

Папка `imports/` (в `.gitignore`) — черновики для загрузки в GitLocalize, **не для GitHub**.

## Установка для игроков

Скопируйте содержимое релиза (или ветки `main` после мержа PR) в инстанс PrismLauncher:

```
<инстанс>\minecraft\kubejs\assets\...
<инстанс>\minecraft\patchouli_books\...
```

Язык в Minecraft: **Русский**. Перезапуск или **F3+T**.

## Связь с официальным репозиторием

Официальные переводы: [Chakyl/society-sunlit-valley](https://github.com/Chakyl/society-sunlit-valley), [вики](https://sunlitvalley.miraheze.org/wiki/Translations).

Этот репозиторий — отдельный community-проект для RU через GitLocalize.

## Документация

- [docs/GITLOCALIZE.md](docs/GITLOCALIZE.md) — настройка GitLocalize
- [docs/GLOSSARY.md](docs/GLOSSARY.md) — терминология (Предмет (Item), коды `&6`…)
- [docs/SOURCES.md](docs/SOURCES.md) — откуда взяты файлы и что ещё не включено

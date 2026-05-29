# DISCLAIMER

EN: While I use Cursor and AI to automate routine tasks, I don't blindly trust AI translation. And I not only proofread, but also edit almost every line to make it sound better or make more sense.

RU: Хотя я использую Курсор и ИИ для автоматизации рутинных задач, я не слепо доверяю ИИ в переводе. И я не только пруфрид, но и корректирую почти каждую строку чтобы она лучше звучала или была понятнее. 

# Society: Sunlit Valley — русская локализация (RU)

Неофициальный репозиторий для перевода [Society: Sunlit Valley](https://github.com/Chakyl/society-sunlit-valley) на русский через [GitLocalize](https://gitlocalize.com).

## Структура репозитория

```
sunlit-ru/
├── l10n/
│   ├── source/       ← EN: что переводим (GitLocalize Source path)
│   └── translated/   ← RU: готовый перевод после PR (GitLocalize Target path)
├── docs/             ← документация (не переводится)
├── scripts/          ← утилиты (не переводится)
└── imports/          ← локальные черновики (не в Git, см. .gitignore)
```

## GitLocalize

| Поле | Значение |
|------|----------|
| Repository | `Duugrim/sunlit-valley-ru` |
| Branch | `master` |
| **Source path** | **`l10n/source`** |
| **Target path** | **`l10n/translated`** |
| Source language | English |
| Target language | Russian |

Подробнее: [docs/GITLOCALIZE.md](docs/GITLOCALIZE.md)

## Установка для игроков

Скопируйте содержимое **`l10n/translated/`** в папку `minecraft` инстанса:

```
<инстанс>\minecraft\kubejs\assets\...
<инстанс>\minecraft\patchouli_books\...
```

Язык Minecraft: **Русский**. Перезапуск или **F3+T**.

Или: `scripts/install-to-modpack.ps1 -InstancePath "..."`

## Документация

- [l10n/README.md](l10n/README.md) — кратко про source / translated
- [docs/GLOSSARY.md](docs/GLOSSARY.md) — терминология
- [docs/SOURCES.md](docs/SOURCES.md) — что включено и откуда

# Society: Sunlit Valley — RU

Минимальный репозиторий для [GitLocalize](https://gitlocalize.com): только квесты и мод Society.

```
sunlit-valley-ru/
├── README.md
├── quests/
│   ├── en_us.json    ← EN (источник)
│   └── ru_ru.json    ← RU (готовый перевод квестов)
├── mod/
│   └── en_us.json    ← EN (источник, society)
└── ru_ru/            ← появится после PR из GL (перевод mod)
```

Остальные исходники (диалоги, patchouli, tips…) лежат локально в **`_local/`** — в Git не попадают.

## GitLocalize

Репозиторий: `Duugrim/sunlit-valley-ru`, ветка **`master`**.

Удалите старые path rules. Добавьте **два правила**:

| Тип | Source | Translation |
|-----|--------|-------------|
| **File** | `quests/en_us.json` | `quests/%lang%.json` |
| **File** | `mod/en_us.json` | `ru_ru/%lang%.json` |

Язык Russian → код **`ru_ru`** (Manage Languages).

Не используйте Source path `/` или `l10n/` — иначе GL снова подхватит лишнее.

После sync:

- **quests** — RU уже в репо, в GL можно ревьюить/править.
- **mod** — перевод появится в `ru_ru/ru_ru.json` после PR.

## Установка в модпак

| Файл в репо | Куда в инстансе |
|-------------|-----------------|
| `quests/ru_ru.json` | `minecraft/kubejs/assets/ftbquestlocalizer/lang/ru_ru.json` |
| `ru_ru/ru_ru.json` | `minecraft/kubejs/assets/society/lang/ru_ru.json` |

Язык Minecraft: **Русский**, перезапуск или **F3+T**.

## Локальные исходники

Папка `_local/` (не в Git): старые `l10n/`, `docs/`, `scripts/`, `imports/`, прочие EN-файлы для будущих этапов.

Обновить EN квестов/мода из модпака:

```powershell
Copy-Item "<инстанс>\minecraft\kubejs\assets\ftbquestlocalizer\lang\en_us.json" "quests\en_us.json"
Copy-Item "<инстанс>\minecraft\kubejs\assets\society\lang\en_us.json" "mod\en_us.json"
```

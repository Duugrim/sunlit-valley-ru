# Society: Sunlit Valley — RU

Минимальный репозиторий для [GitLocalize](https://gitlocalize.com).

```
sunlit-valley-ru/
├── README.md
├── quests/
│   ├── en_us.json
│   └── ru_ru.json
├── mod/
│   └── en_us.json
├── skills/
│   └── en_us.json
└── ru_ru/            ← перевод mod (после PR из GL)
```

Остальное — в **`_local/`**, не в Git.

## GitLocalize

Репозиторий: `Duugrim/sunlit-valley-ru`, ветка **`master`**, код русского: **`ru_ru`**.

| Тип | Source | Translation |
|-----|--------|-------------|
| **File** | `quests/en_us.json` | `quests/%lang%.json` |
| **File** | `mod/en_us.json` | `ru_ru/%lang%.json` |
| **File** | `skills/en_us.json` | `skills/%lang%.json` |

## Установка в модпак

| Файл в репо | Куда в инстансе |
|-------------|-----------------|
| `quests/ru_ru.json` | `minecraft/kubejs/assets/ftbquestlocalizer/lang/ru_ru.json` |
| `ru_ru/ru_ru.json` | `minecraft/kubejs/assets/society/lang/ru_ru.json` |
| `skills/ru_ru.json` | `minecraft/kubejs/assets/society_skills/lang/ru_ru.json` |

Язык Minecraft: **Русский**, перезапуск или **F3+T**.

## Обновить EN из модпака

```powershell
$mc = "<инстанс>\minecraft\kubejs\assets"
Copy-Item "$mc\ftbquestlocalizer\lang\en_us.json" "quests\en_us.json"
Copy-Item "$mc\society\lang\en_us.json" "mod\en_us.json"
Copy-Item "$mc\society_skills\lang\en_us.json" "skills\en_us.json"
```

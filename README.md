# Society: Sunlit Valley — RU

# DISCLAIMER

EN: While I use Cursor and AI to automate routine tasks, I don't blindly trust AI translation. And I not only proofread, but also edit almost every line to make it sound better or make more sense.

RU: Хотя я использую Курсор и ИИ для автоматизации рутинных задач, я не слепо доверяю ИИ в переводе. И я не только пруфрид, но и корректирую почти каждую строку чтобы она лучше звучала или была понятнее.

---

Минимальный репозиторий для [GitLocalize](https://gitlocalize.com).

Термины перевода: **[GLOSSARY.md](GLOSSARY.md)**.

```
sunlit-valley-ru/
├── README.md
├── GLOSSARY.md
├── quests/
│   ├── en_us.json
│   └── ru_ru.json
├── mod/
│   ├── en_us.json
│   └── ru_ru.json
├── skills/
│   └── en_us.json
```

Остальное — в **`_local/`**, не в Git.

## GitLocalize

Репозиторий: `Duugrim/sunlit-valley-ru`, ветка **`master`**, код русского: **`ru_ru`**.

| Тип | Source | Translation |
|-----|--------|-------------|
| **File** | `quests/en_us.json` | `quests/%lang%.json` |
| **File** | `mod/en_us.json` | `mod/%lang%.json` |
| **File** | `skills/en_us.json` | `skills/%lang%.json` |

## Установка в модпак

| Файл в репо | Куда в инстансе |
|-------------|-----------------|
| `quests/ru_ru.json` | `minecraft/kubejs/assets/ftbquestlocalizer/lang/ru_ru.json` |
| `mod/ru_ru.json` | `minecraft/kubejs/assets/society/lang/ru_ru.json` |
| `skills/ru_ru.json` | `minecraft/kubejs/assets/society_skills/lang/ru_ru.json` |

Язык Minecraft: **Русский**, перезапуск или **F3+T**.

## Обновить EN из модпака

```powershell
$mc = "<инстанс>\minecraft\kubejs\assets"
Copy-Item "$mc\ftbquestlocalizer\lang\en_us.json" "quests\en_us.json"
Copy-Item "$mc\society\lang\en_us.json" "mod\en_us.json"
Copy-Item "$mc\society_skills\lang\en_us.json" "skills\en_us.json"
```

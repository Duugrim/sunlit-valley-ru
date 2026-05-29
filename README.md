# DISCLAIMER

EN: While I use Cursor and AI to automate routine tasks, I don't blindly trust AI translation. And I not only proofread, but also edit almost every line to make it sound better or make more sense.

RU: Хотя я использую Курсор и ИИ для автоматизации рутинных задач, я не слепо доверяю ИИ в переводе. И я не только пруфрид, но и корректирую почти каждую строку чтобы она лучше звучала или была понятнее. 

# Society: Sunlit Valley — русская локализация (RU)

Репозиторий: https://github.com/Duugrim/sunlit-valley-ru

## Структура

```
sunlit-ru/
├── l10n/
│   ├── en/          ← EN исходники (для GitLocalize)
│   └── ru_ru/       ← RU после merge PR
├── docs/            ← не переводится
├── scripts/
└── imports/         ← черновики (не в Git)
```

## GitLocalize

**Не работает:** Source path = `l10n/source` или `/`.

**Работает:** отдельные правила File/Directory — см. **[docs/GITLOCALIZE.md](docs/GITLOCALIZE.md)** и **[docs/gitlocalize-rules.txt](docs/gitlocalize-rules.txt)**.

Код русского языка: **`ru_ru`**.

## Установка в модпак

```powershell
.\scripts\install-to-modpack.ps1 -InstancePath "C:\...\instances\Society- Sunlit Valley"
```

Копирует `l10n/ru_ru/` → `<инстанс>\minecraft\`.

Язык Minecraft: **Русский**, перезапуск или **F3+T**.

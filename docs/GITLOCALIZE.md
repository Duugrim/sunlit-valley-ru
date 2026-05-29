# GitLocalize — пошаговая настройка

## Почему «не находит файлы»

GitLocalize **не** сканирует произвольную папку `source`. Он ждёт:

1. Путь **с кодом языка** (`en`, `en_us`…) или **явное правило на каждый файл**.
2. Для Minecraft: `en_us.json` → `ru_ru.json` через `%lang%` в **имени файла**, не только в папке.

Папка `l10n/source` для GL «пустая». Используйте **`l10n/en`** и правила ниже.

---

## 1. Создайте проект заново

1. [gitlocalize.com](https://gitlocalize.com) → **Add repository** → `Duugrim/sunlit-valley-ru`
2. Branch: **`master`**
3. Source language: **English**
4. Target language: **Russian** — в **Manage Languages** задайте код **`ru_ru`** (не `ru`).

---

## 2. Удалите дефолтное правило `/` → `/%lang%`

В настройках Paths удалите правило с корнем репозитория — иначе снова подхватит `docs/`.

---

## 3. Добавьте правила (+ Add Rule)

Тип **File** — для lang JSON (слева в dropdown «File»):

| Source Path | Translation Path |
|-------------|------------------|
| `l10n/en/kubejs/assets/society/lang/en_us.json` | `l10n/%lang%/kubejs/assets/society/lang/%lang%.json` |
| `l10n/en/kubejs/assets/ftbquestlocalizer/lang/en_us.json` | `l10n/%lang%/kubejs/assets/ftbquestlocalizer/lang/%lang%.json` |
| `l10n/en/kubejs/assets/dialog/lang/en_us.json` | `l10n/%lang%/kubejs/assets/dialog/lang/%lang%.json` |
| `l10n/en/kubejs/assets/society_tips/lang/en_us.json` | `l10n/%lang%/kubejs/assets/society_tips/lang/%lang%.json` |
| `l10n/en/kubejs/assets/society_skills/lang/en_us.json` | `l10n/%lang%/kubejs/assets/society_skills/lang/%lang%.json` |

`en_us_template.json` **не** добавляйте в GL — это справочник для ручного переноса ключей в `ru_ru.json`.

Тип **Directory** — для Patchouli:

| Source Path | Translation Path |
|-------------|------------------|
| `l10n/en/patchouli_books/almanac/en_us` | `l10n/%lang%/patchouli_books/almanac/%lang%` |
| `l10n/en/patchouli_books/fish_finder/en_us` | `l10n/%lang%/patchouli_books/fish_finder/%lang%` |

Пути **без** ведущего `/` и **без** имени репозитория.

---

## 4. Sync

После сохранения дождитесь sync. Должно появиться **7 компонентов** (5 JSON + 2 каталога Patchouli).

---

## 5. Импорт перевода квестов

Локально: `imports/ftbquestlocalizer/lang/ru_ru.json`

В GL: файл **ftbquestlocalizer … en_us.json** → Russian → вставка/импорт сегментов → **Review Request** (без PR, пока не готовы).

---

## 6. Установка в модпак

После merge PR из GL:

```powershell
.\scripts\install-to-modpack.ps1 -InstancePath "C:\...\instances\Society- Sunlit Valley"
```

Копирует `l10n/ru_ru/` → `minecraft/` (пути уже как в игре).

---

## Чеклист если снова 0 файлов

- [ ] Branch `master`, не `main`
- [ ] Код русского языка = **`ru_ru`**
- [ ] Source path содержит **`l10n/en/...`**, не `source` и не `l10n/source`
- [ ] Нет правила с корнем `/`
- [ ] GitHub App GitLocalize имеет доступ к репо
- [ ] Нажали Resync / пересоздали проект после push

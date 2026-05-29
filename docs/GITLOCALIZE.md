# GitLocalize

## 1. Подключение репозитория

1. [gitlocalize.com](https://gitlocalize.com) → вход через GitHub.
2. **Add repository** → выберите этот репо.
3. Ветка: `main`.
4. **Source language:** English  
5. **Target language:** Russian (`ru` / `ru_ru` — как предложит интерфейс для JSON Minecraft).

### Пути (рекомендация)

| Поле | Значение |
|------|----------|
| Source path | `/` (корень репозитория) |
| Target path | `/` (зеркальная структура) |

GitLocalize подхватывает `en_us.json` и JSON в `patchouli_books/*/en_us/`.  
Для Patchouli целевой язык обычно даёт папку `ru_ru/` рядом с `en_us/`.

## 2. Только исходники в GitHub

В `main` **нет** файлов `ru_ru.json` (кроме случая, когда модератор смержил PR из GL).

Так новые строки после обновления сборки видны как «не переведено».

## 3. Импорт готового перевода квестов (не в Git)

Файл локально (не коммитится):

```
imports/ftbquestlocalizer/lang/ru_ru.json
```

**После** первого sync проекта в GitLocalize:

1. Откройте компонент / файл `kubejs/assets/ftbquestlocalizer/lang/en_us.json` → язык **Russian**.
2. Импортируйте или вставьте сегменты из `imports/.../ru_ru.json` (если в UI есть Import — используйте его; иначе — пакетная вставка по файлу в редакторе GL).
3. **Не** отправляйте PR в GitHub, пока не закончите ревью.
4. **Create Review Request** → вы как **Language Moderator** → правки → **Pull Request** → merge на GitHub.

Переводчики **не** могут слать PR в GitHub напрямую — только модератор языка.

## 4. Society: template

В репо есть `en_us_template.json` — автогенерируемый список блоков/предметов Society.  
При переводе `ru_ru.json` для society переносите ключи из template в основной файл языка (как в [официальном гайде](https://github.com/Chakyl/society-sunlit-valley/blob/master/TRANSLATIONS.md)).

## 5. Роли

| Роль | Кто |
|------|-----|
| Admin | владелец репо |
| Language Moderator (ru) | ревью + PR в GitHub |
| Translator | перевод + Review Request |

## 6. Обновление исходников

При выходе новой версии модпака:

1. Обновить `en_us*` и `patchouli_books/*/en_us` в этом репо (PR).
2. GitLocalize подтянет diff → доработать только изменённые сегменты.

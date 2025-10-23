# Обновление Cursor на Ubuntu

## Конкретная команда для установки уже скачанного .deb файла:

```bash
sudo apt install ~/Downloads/cursor-*.deb
```

Или если файл в другой директории:

```bash
sudo apt install /путь/к/файлу/cursor-*.deb
```

## Пошаговая инструкция:

### 1. Найти скачанный файл:

```bash
ls ~/Downloads/cursor*.deb
```

### 2. Установить обновление (рекомендуемый способ):

```bash
sudo apt install ~/Downloads/cursor-*.deb
```

Этот метод автоматически разрешит зависимости.

### 3. Альтернативный способ через dpkg:

```bash
sudo dpkg -i ~/Downloads/cursor-*.deb
```

Если возникнут ошибки зависимостей, выполните:

```bash
sudo apt install -f
```

## Для AppImage версии:

### 1. Сделать файл исполняемым:

```bash
chmod +x ~/Downloads/cursor-*.AppImage
```

### 2. Запустить:

```bash
~/Downloads/cursor-*.AppImage
```

## Проверка установленной версии:

```bash
cursor --version
```

## Удаление старой версии перед обновлением (опционально):

```bash
sudo apt remove cursor
```

Затем установите новую версию командой выше.

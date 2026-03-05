# Language: Russian
# File ending: RU
# Codepage: 866
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

tee

Сохраняет копию входных данных (STDIN) в один или несколько файлов и
выводит их.
Использование:

tee [параметры] [d:][путь]файл [[d:][путь]файл2] ...
Параметры:

/A   Дописать в файл(ы): Добавляет данные в выходные файлы вместо их
     перезаписи.

/I   Игнорировать прерывания: игнорирует попытки прерывания пользователем.

[d:][путь]файл [[d:][путь]файл2] ...   Указывает выходные файлы.
Примеры:

echo "Привет, мир!" | tee hello.txt
Выводит "Привет, мир!" на экран и сохраняет в hello.txt.

tee log.txt another_log.txt < input.txt
Выводит содержимое input.txt и сохраняет его в log.txt и another_log.txt.

catdoc letter.doc | tee /I letter.txt | wc
Сохраняет содержимое letter.doc, обработанное catdoc, в letter.txt и передает
его в wc для подсчета слов.
Не разрешать прерывания пользователем.

Этот файл является частью справочной документации FreeDOS HTML Help и
распространяется на условиях лицензии GNU FDL.


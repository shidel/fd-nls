# Language: Russian
# File ending: ru
# Codepage: 866
# This translation was created by Google AI.
# Please help the FreeDOS group to improve it.

GNU Wget 1.11.1, неинтерактивный сетевой загрузчик.
Использование: wget.exe [OPTION]... [URL]...

Обязательные аргументы для длинных опций обязательны и для коротких.

Запуск:
  -V,  --version                    показать версию Wget и выйти.
  -h,  --help                       вывести эту справку.
  -b,  --background                 перейти в фон после запуска.
  -e,  --execute=COMMAND            выполнить `.wgetrc'-стиль команду.

Логирование и входной файл:
  -o,  --output-file=FILE           записывать сообщения в FILE.
  -a,  --append-output=FILE         добавлять сообщения в FILE.
  -d,  --debug                      вывести много отладочной информации.
       --wdebug                     вывести Watt-32 отладочный вывод.
  -q,  --quiet                      тихий режим (без вывода).
  -v,  --verbose                    подробный режим (по умолчанию).
  -nv, --no-verbose                 отключить подробности, не будучи
                                    тихим.
  -i,  --input-file=FILE            загрузить URL, найденные в FILE.
  -F,  --force-html                 считать входной файл как HTML.
  -B,  --base=URL                   добавить URL перед относительными
                                    ссылками.

Загрузка:
  -t,  --tries=NUMBER               установить число попыток на NUMBER
                                    (0 - безлимитно).
       --retry-connrefused          повторять даже при отказе соединения.
  -O,  --output-document=FILE       записывать документы в FILE.
  -nc, --no-clobber                 пропустить загрузки, которые
                                    перезаписали бы файлы.
  -c,  --continue                   продолжить загрузку частичного файла.
       --progress=TYPE              выбрать тип индикатора прогресса.
  -N,  --timestamping               не загружать заново, если не новее
                                    локального файла.
  -S,  --server-response            вывести ответ сервера.
       --spider                     ничего не загружать.
  -T,  --timeout=SECONDS            установить все тайм-ауты на SECONDS.
       --dns-timeout=SECS           установить тайм-аут DNS на SECS.
       --connect-timeout=SECS       установить тайм-аут соединения на
                                    SECS.
       --read-timeout=SECS          установить тайм-аут чтения на SECS.
  -w,  --wait=SECONDS               ждать SECONDS между загрузками.
       --waitretry=SECONDS          ждать 1..SECONDS между попытками.
       --random-wait                ждать 0...2*WAIT сек между загрузками.
       --no-proxy                   явно отключить прокси.
  -Q,  --quota=NUMBER               установить квоту загрузки на NUMBER.
       --bind-address=ADDRESS       привязать к ADDRESS (имя/IP) локально.
       --limit-rate=RATE            ограничить скорость загрузки на RATE.
       --no-dns-cache               отключить кэширование DNS-запросов.
       --restrict-file-names=OS     ограничить символы в именах для OS.
       --ignore-case                игнорировать регистр при поиске.
  -4,  --inet4-only                 подключаться только к IPv4-адресам.
  -6,  --inet6-only                 подключаться только к IPv6-адресам.
       --prefer-family=FAMILY       подключаться сначала к этой семье,
                                    одной из IPv6, IPv4 или none.
       --user=USER                  установить FTP/HTTP пользователя на
                                    USER.
       --password=PASS              установить FTP/HTTP пароль на PASS.

Директории:
  -nd, --no-directories             не создавать директории.
  -x,  --force-directories          принудительно создавать директории.
  -nH, --no-host-directories        не создавать директории хоста.
       --protocol-directories       использовать имя протокола в папках.
  -P,  --directory-prefix=PREFIX    сохранять файлы в PREFIX/...
       --cut-dirs=NUMBER            игнорировать NUMBER удаленных папок.

HTTP опции:
       --http-user=USER             установить HTTP пользователя на USER.
       --http-password=PASS         установить HTTP пароль на PASS.
       --no-cache                   запретить кэшированные данные сервера.
  -E,  --html-extension             сохранить HTML с расширением `.html'.
       --ignore-length              игнорировать поле заголовка
                                    `Content-Length'.
       --header=STRING              вставить STRING в заголовки.
       --max-redirect               макс. число перенаправлений.
       --proxy-user=USER            установить USER как прокси-пользователь.
       --proxy-password=PASS        установить PASS как прокси-пароль.
       --referer=URL                включить заголовок `Referer: URL'.
       --save-headers               сохранить HTTP-заголовки в файл.
  -U,  --user-agent=AGENT           идентифицировать как AGENT, не Wget.
       --no-http-keep-alive         отключить HTTP keep-alive.
       --no-cookies                 не использовать куки.
       --load-cookies=FILE          загрузить куки из FILE до сессии.
       --save-cookies=FILE          сохранить куки в FILE после сессии.
       --keep-session-cookies       загрузить и сохранить сессионные куки.
       --post-data=STRING           использовать метод POST; послать STRING.
       --post-file=FILE             использовать метод POST; послать
                                    содержимое FILE.
       --content-disposition        уважать заголовок Content-Disposition
                                    при выборе локальных имен файлов
                                    (ЭКСПЕРИМЕНТАЛЬНО).
       --auth-no-challenge          Послать Basic HTTP-аутентификацию без
                                    ожидания вызова сервера.

HTTPS (SSL/TLS) опции:
       --secure-protocol=PR         выбрать безопасный протокол, один из
                                    auto, SSLv2, SSLv3 и TLSv1.
       --no-check-certificate       не проверять сертификат сервера.
       --certificate=FILE           файл клиентского сертификата.
       --certificate-type=TYPE      тип клиентского сертификата, PEM или
                                    DER.
       --private-key=FILE           файл приватного ключа.
       --private-key-type=TYPE      тип приватного ключа, PEM или DER.
       --ca-certificate=FILE        файл с набором сертификатов CA.
       --ca-directory=DIR           директория со списком хешей CA.
       --random-file=FILE           файл со случайными данными для SSL
                                    PRNG.
       --egd-file=FILE              файл, называющий EGD-сокет.

FTP опции:
       --ftp-user=USER              установить FTP пользователя на USER.
       --ftp-password=PASS          установить FTP пароль на PASS.
       --no-remove-listing          не удалять `.listing'-файлы.
       --no-glob                    отключить FTP globbing имен файлов.
       --no-passive-ftp             отключить "пассивный" режим передачи.
       --retr-symlinks              при рекурсии получать связанные файлы.
       --preserve-permissions       сохранять права доступа удаленных
                                    файлов.

Рекурсивная загрузка:
  -r,  --recursive                  указать рекурсивную загрузку.
  -l,  --level=NUMBER               макс. глубина рекурсии (inf/0 -
                                    бесконечно).
       --delete-after               удалить файлы локально после загрузки.
  -k,  --convert-links              делать ссылки в HTML локальными.
  -K,  --backup-converted           перед конвертацией X сохранить как
                                    X.orig.
  -m,  --mirror                     сокращение для -N -r -l inf
                                    --no-remove-listing.
  -p,  --page-requisites            получить все необходимые файлы для HTML.
       --strict-comments            включить строгую (SGML) обработку
                                    HTML-комментариев.

Рекурсивный прием/отказ:
  -A,  --accept=LIST                список принимаемых расширений (через
                                    запятую).
  -R,  --reject=LIST                список отклоняемых расширений (через
                                    запятую).
  -D,  --domains=LIST               список принимаемых доменов (через
                                    запятую).
       --exclude-domains=LIST       список отклоняемых доменов (через
                                    запятую).
       --follow-ftp                 следовать FTP-ссылкам из HTML.
       --follow-tags=LIST           список отслеживаемых HTML-тегов.
       --ignore-tags=LIST           список игнорируемых HTML-тегов.
  -H,  --span-hosts                 переходить к чужим хостам при рекурсии.
  -L,  --relative                   следовать только относительным
                                    ссылкам.
  -I,  --include-directories=LIST   список разрешенных директорий.
  -X,  --exclude-directories=LIST   список исключенных директорий.
  -np, --no-parent                  не подниматься в родительскую
                                    директорию.

Присылайте отчеты об ошибках и предложения на <bug-wget@gnu.org>.


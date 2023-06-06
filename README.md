Задание 1

cat > delfiletodir

#!/bin/bash

read -p "Введите путь к дирректории: " DELDIR

if [ -e $DELDIR ]
    then
        echo 'Указанная дирректория найдена'
        cd $DELDIR
        echo 'Произвожу удаление'
        rm -v *.bak *.tmp *.backup
        echo 'Удаление завершено успешно'
    else
        echo 'Указанная дирректория не найдена! Выполнение остановлено'
        exit 2
fi
Сохраняем и запускаем в Bash:

bash delfiletodir


Задание 2

#!/bin/bash

dir=$(ls -l | tr -s ' ' '\t' | cut -f '3' | sort -u)
for i in $dir; do
    mkdir -p $i
done


dirfile=$(ls -l | tr -s ' ' '\t' | cut -f '3 9')
count=0
for i in $dirfile; do
    count=$((count+1))
        if (($count%2))
            then
                dir=$i
                echo $dir = $i zero
            else
                if [ -f ./$i ]
                    then
                        cp ./$i ./$dir/$i
                fi
        fi
done

Задание 1
#!/bin/bash

read -p "Введите путь к дирректории: " DELDIR

if [ -e $DELDIR ]
        then
                echo 'Дирректория найдена'
                cd $DELDIR
                echo 'удаление'
                rm -v *.bak *.tmp *.backup
                echo 'Удаление завершено'
        else
                echo 'Дирректория не найдена! Выполнение остановлено'
                exit 2

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

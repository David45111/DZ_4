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
fi
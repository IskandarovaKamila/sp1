#!/usr/bin/env bash
echo "Автор: Искандарова Камила"
echo "Название программы: kmbsnkm"
echo "Краткое описание: Работа с паролями"
echo "716"

while [[ $otvet != "n" ]]
do
	echo "Введите имя пользователя:"
	read name
	echo "Выберите тип действия для данного пользователя:"
	echo "1. Заблокировать."
	echo "2. Разблокировать."
	read action
	if [[ $action = 1 ]]
	then
		passwd -l $name
	else
		if [[ $action = 2 ]]
		then
			passwd -u $name
		else
			echo "Попробуй заново."
		fi
	fi

	echo "Хотите продолжить (y) или выйти (n)?"
	read otvet
	if [ $otvet != "y" ] && [ $otvet != "n" ]
	then
		echo "Ответ неверный. Прекращение работы."
		exit 0
	fi
done 
exit 0

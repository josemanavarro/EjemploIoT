#!/bin/bash
# Variables del script
broker="mosquitto"
topic="/aula211/temperatura"
usuario="tarea1"
password="Alandalus2425"
intervalo=2
min=-10
max=45
RANDOM=42

# Invento una temperatura
temperatura=$((min + RANDOM % (max -min +1)))
while true; do
	# Publicamos la temperatura
	mosquitto_pub -h $broker -t $topic -m $temperatura -u $usuario -P $password
	# Calculamos un cambio entre -1 y +1
	cambio=$((RANDOM % 3 -1))
	# Asignamos temperatura
	temperatura=$((temperatura + cambio))
	# Aseguramos el rango
	if [ $temperatura -lt $min ]; then
		temperatura = $min
	elif [ $temperatura -gt $max ]; then
		temperatura = $max
	fi
	# Hacemos pausa entre envíos
	sleep $intervalo
done

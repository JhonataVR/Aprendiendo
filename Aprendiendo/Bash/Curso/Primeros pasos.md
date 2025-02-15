Archivo .sh
Cabecera del archivo : #! /bin/bash "Esto indica la ubicacion del programa con el que se ejecutara el porgrama"
ls ver contenido
cat mostrar, asi tambien en la porgramacion en bash permite guardar datos ingresados o agregarlos mediante >
Ej Ingresar:
cat > entrada.txt sobre escribe o crea el archivo si no existe
cat >> entrada2.txt no sobre escribe, si el archivo ya tenia un contenido aniade lo que se ingreso al mismo, y de igual manera si no existe el archivo lo vuelve a crear
Ej Salida:
cat << texto
hola esto es un texto
texto
Al igual que en html cerramos con la misma etiqueta (obligatorio el salto de linea despues y antes de la etiqueta)
chmod +x da permisos para ejecutar el script en bash
Ingresar datos con read
read edad # Creando una variable
echo "Esta es tu edad: $edad  anios"
Condicionales
![[Pasted image 20250215200059.png]]
SER MUY ESTRICTO CON LOS ESPACIOS Y LA SINTAXIS
Ahora como le hacemos para usar operadores logicos
Asi: 
![[Pasted image 20250215200658.png]]
o sino
![[Pasted image 20250215200731.png]]
En caso de o usamos || o sino -o que significa or
Para el if es && o sino -a que significa and
El -o y -a solo funciona cuando estan juntas en un corchete las dos opciones, no cuando estan separdas
![[Pasted image 20250215201102.png]]
Case
![[Pasted image 20250215201802.png]]
Loops
![[Pasted image 20250215203856.png]]
Continue Break
![[Pasted image 20250215233702.png]]
Arguments
![[Pasted image 20250215234657.png]]
Stdin

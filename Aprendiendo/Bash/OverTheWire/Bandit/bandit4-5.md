![[Pasted image 20250213012224.png]]
En este caso veremos el problema de buscar un archivo entre muchos que sea legible, en si que sea de tipo ASCII text, intentamos buscarlo solo por readable pero no realizaba un buen filtro, asi que recurrimos a el -exec para ejecutar un comando dentro de los archivos encontrados, luego los grepeamos para filtrar solo los que sean legibles, osea ASCII text, y listo:
![[Pasted image 20250213013153.png]]
Password encontrada!
	Crear entorno virtual
python3 -m venv envph
	Activar el entorno virtual
source ./envph/bin/activate
	Verificar si se esta en el entorno virtual 
which python
	Instalar django
pip install django
	Crear proyecto en Django
django-admin startproject <Nombre del proyecto> <Ruta donde se creara>
	Correr el backend 
python manage.py runserver <Puerto opcional, por defecto viene en el 8000>
	Para mas informacion sobre manage.py 
python manage.py --help
	Archivo de configuracion del proyecto
settings.py
	Creacion de app (Un proyecto contempla varias apps dentro suyo)
python manage.py startapp <Nombre de la aplicacion>
	Archivo de la app que se muestra en la pagina 
views.py
	Archivo de configuración de la app
apps.py
	Archivo de creación de modelos de la base de datos 
models.py
	Archivo para testéar la logica de la app
tests.py
	Para ver si hay cambios en los modelos de la base de datos
python manage.py makemigrations
	Para efectuar todos los cambios que hay en la base de datos
python manage.py migrate
	Shell de django
python manage.py shell

Python 3.13.2 (main, Mar 13 2025, 14:29:07) [GCC 14.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from myapp.models import Project, Task
>>> Project(name="aplicación móvil")
<Project: Project object (None)>
>>> p= Project(name="aplicación móvil")
>>> p
<Project: Project object (None)>
>>> p.save()
>>> p= Project(name="aplicación web usando django")
>>> p
<Project: Project object (None)>
>>> p.save()
>>> Project .objects.all()
<QuerySet [<Project: Project object (1)>, <Project: Project object (2)>]>
>>> o = Project .objects.all()
>>> o
<QuerySet [<Project: Project object (1)>, <Project: Project object (2)>]>
>>> Project.objects.get(id =1)
<Project: Project object (1)>
>>> Project.objects.get(id =2)
<Project: Project object (2)>
>>> Project.objects.get(name =aplicacion movil)
  File "<console>", line 1
    Project.objects.get(name =aplicacion movil)
SyntaxError: invalid syntax. Perhaps you forgot a comma?
>>> Project.objects.get(name ="aplicacion movil")
❯ python manage.py shell
9 objects imported automatically (use -v 2 for details).

Python 3.13.2 (main, Mar 13 2025, 14:29:07) [GCC 14.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from myapp.models import Project, Task
>>> Project.objects.get(id=1)
<Project: Project object (1)>
>>> p=Project.objects.get(id=1)
>>> p.task_set.all()
<QuerySet []>
>>> p.task_set.create(title="descargar")
<Task: Task object (1)>

	Parametros
Agregar una variable desde la url, en si que la url pida un parametro 
![[Pasted image 20250416093713.png]]
![[Pasted image 20250416093754.png]]
Tipos de datos de los parametros 
<str:> <int:>
crear variables al lado del (request,<ACA>) en views
	Parametros y modelos
Aca aprendimos a hacer esto 
![[Pasted image 20250416100508.png]]
Sirve para que podamos solicitar un json de un objeto de la base de datos o un esoecificamente un atributo del objeto
	Panel Admin
Para poder crear un usuario admin debemos ejecutar el siguiente comando
python manage.py createsuperuser
Ademas tenemos el archivo que esta en la app llamado admin.py
![[Pasted image 20250416101611.png]]
Esto es para que se muestren los nombres de los objetos en el panel admin
	Render
	![[Pasted image 20250416104054.png]]
Asi se maneja el render, para archivos html en la carpeta templates
	Uso de templates
![[Pasted image 20250416104523.png]]

/*
1.2.1 Conociendo el scIDE
El IDE (Integrated Development Environment) de SuperCollider es un entorno de programación multiplataforma optimizado para convivir con sclang y scsynth (o supernova).

(Localiza tu cursor de texto sobre cualquier parte de el siguiente bloque de código y ejecútalo con Ctrl (o Cmd) + enter. Ejecutarlo mostrará una imagen con la ubicación de los distintos componentes del scIDE)
*/

(
var ventana, img;
ventana = Window("Componentes de scIDE", Rect(400, 200, 1151, 711));
img = Image.open(thisProcess.nowExecutingPath.dirname +/+ "/media/IDE.png");

UserView(ventana,ventana.view.bounds).drawFunc_({img.drawInRect(Rect(0, 0, 1151, 711)) });

ventana.front;
)

/*
Como se puede observar en la imágen, scIDE se compone de:

1. Barra de título
Muestra el nombre de la sesión o sesiones y su ruta.

2. Editor de código
Espacio de trabajo para crear, editar y ejecutar código.

3. Pestañas de documentos
Se encuentran por encima del editor, cada una corresponde a un documento. Se pueden navegar con Ctrl (o Cmd) + Tab, o Ctrl (o Cmd) + Shift + Tab

4. Barra de herramientas
Muestra heeramientas relacionadas al código. Está oculta por defecto. Se puede activar desde View > Tool Panels, o con los siguientes comandos de teclado:

Buscar: Ctrl + F
Remplazar: Ctrl + R
Ir a una línea: Ctrl + L
Escribir y evaluar una sola línea: Ctrl + E

5. Barra de estatus
Contiene información relevante acerca del intérprete y el servidor.

Los números verdes de la sección del servidor representan (de izquierda a derecha):
- El promedio del uso del CPU (%).
- El pico del uso del CPU (%).
- El número de Ugens (Unit generators) que está corriendo el servidor (u).
- El número de nodos que está corriendo el servidor (s).
- El número de grupos de nodos corriendo en el servidor (g).
- El número de definiciones de sintetizadores alojados en la memoria del servidor (d).
- El ajuste de intensidad al master del servidor (dB)
- El idicador de muteo del servidor (M).
- El indicador de grabación del servidor (R).

(No te preocupes si por ahora no entiendes qué significan estos procesos, se abordarán a lo largo del curso)

4. Lista de documentos
Una lista de los documentos abiertos, útil cuando se trabaja con una gran cantidad de ficheros.

5. Navegador de ayuda
Area destinada a mostrar, buscar y navegar por la ayuda.

6. Ventana de mensajes
Muestra las respuestas del intérprete: resultados de la evaluación de código, notificaciones, advertencias y errores, entre otros.

Estos últimos tres elementos (lista de documentos, navegador de ayuda y ventana de mensajes) son páneles acoplables (Docklets), lo que significa que pueden ser movidos a diferentes lugares del IDE haciendo click en su título y arrastrandolos mientras se mantiene el click. También pueden ser desacoplados, minimizados o cerrados. Otra forma de gestionarlos es View -> Docklets

*/

//Para ir al siguiente tutorial, ejecuta la siguiente línea de código:
"1.3 Acciones básicas.scd".openOS;

//Para ir al tutorial anterior, ejecuta la siguiente línea de código:
"1.2 Arquitectura de SuperCollider.scd".openOS;

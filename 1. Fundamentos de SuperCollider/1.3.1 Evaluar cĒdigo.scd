/*
1.3.1 Evaluar código

La primera acción que veremos es algo que ya hemos venido haciendo en lecciones anteriores: evaluar código.

Evaluar es ejecutar un fragmento de código en sclang para que produzca un resultado inmediato. Hay dos formas de hacer esto:

1. Ejecutar una sola línea de código o bloque seleccionado

Esto se hace con shift + enter
*/

"Coloca tu cursor de texto en cualquier parte de esta linea y ejecútala con shift + enter"; "BIEN HECHO";

"Selecciona ".post;
"todo este bloque ".post;
"de código y ejecútalo ".post;
"con shift + enter".postln;
"BIEN HECHO";

//2. Evaluar una linea seleccionada o un bloque de código entre paréntesis. Esto se hace con ctrl (o cmd) + enter.

"Selecciona esta linea y ejecútala con ctrl + enter";"BIEN HECHO";

(
"Coloca tu cursor ".post;
"de texto en cualquier ".post;
"parte de este bloque y ".post;
"evalúalo con ctrl + enter".postln;
"BIEN HECHO";
);


//Siguiente tutorial
"1.3.2 Hacer comentarios.scd".openOS;

//Tutorial anterior:
"1.3 Acciones básicas.scd".openOS;


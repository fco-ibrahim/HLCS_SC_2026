/*
scIDE tiene un sistema de documentación integrado de forma nativa. Para acceder él usamos Ctrl (o cmd) + d (con nuestro cursor de escritura fuera del texto de alguna línea). Esto funcionará aunque no tengamos la ventana desacoplable de ayuda activada.

Si ejecutamos el mismo atajo de teclado sobre el texto de alguna línea, el comando buscará la palabra sobre la cuál se encuentre nuestro cursor de escritura y nos redirigirá a su página en la documentación si hay una entrada con ese nombre. En caso de no haber entradas con ese nombre, nos sugeriá resultados relevantes.
*/

//En la siguiente línea, prueba consultar la ayuda de SinOsc con el atajo Ctrl + d
play{SinOsc.ar(mul:0.3)}

//También es posible buscar un término específico en la documentación con el atajo Ctrl + shift + d. Inténtalo si gustas.

/*
En la barra superior de la documentación, podemos eleguir navegarla por medio de categorías (Browse), buscar algo diréctamente (Search), listar los documentos, clases y métodos por orden alfabético (Indexes), mostrar la jerarquía completa de clases (también en Indexes) e incluso cambiar la apariencia de la ventana (Theme).

La documentación de SuperCollider no sólo contiene ayuda, también tutoriales e incluso ejemplos. Siempre es una buena idea dedicar tiempo a explorarla.
*/
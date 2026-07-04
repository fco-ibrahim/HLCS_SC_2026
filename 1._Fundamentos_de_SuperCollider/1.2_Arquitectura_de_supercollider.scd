/*
1.2 Arquitectura de SuperCollider

Como plataforma, SuperCollider se compone de tres elementos principales:

1) Servidores
1.1 scsynth
Un motor de audio DSP en tiempo real implementado como servidor.
1.2 supernova
Un servidor alternativo a scsynth con soporte para DSP en procesadores multinúcleo.

2) sclang
Un lenguaje de programación basado en texto que actua como cliente para el servidor.

3) ScIDE
Un editor para SuperCollider con un sistema de ayuda integrado.

A diferencia del scIDE y sclang, el servidor de supercollider no se inicia automáticamente al abrir la plataforma. Se puede prender con Ctrl (Cmd) + b o con la línea de código:
*/

s.boot;

/*
¿Por qué no juntar todo en una arquitectura unificada?

El diseño de SuperCollider está pensado para ser extremadamente flexible y eficiente en el trabajo con audio en múltiples contextos. Algunas de las ventajas que ofrece la división de SC en tres componenetes son:

-La utilización de sclang y servidores en editores de código diferentes a scIDE.

-La implementación de clientes distintos a sclang (es posible generar sonidos en scSynth desde Python, JavaScript, Haskell o Scala)

-La posibilidad de controlar servidores en múltiples computadoras usando un sclang centralizado.

-La conexión de múltiples clientes a un solo servidor.

-La posibilidad de crear múltiples instancias del servidor para: (1)gestionar procesos independientes en paralelo (esto evita que un proceso intensivo afecte al resto),(2)configurar una salida de audio distinta para cada servidor (esto permite generar sonido en múltiples salidas de manera simultanea).

-y...¡MUCHAS otras posibilidades!

*/



//Para ir al siguiente tutorial, ejecuta la siguiente línea de código
(PathName.new(thisProcess.nowExecutingPath).parentPath+/+"1.2.1_Conociendo_el_scIDE.scd").openOS;

//Para ir al tutorial anterior, ejecuta la siguiente línea de código
(PathName.new(thisProcess.nowExecutingPath).parentPath+/+"1.1_Presentacion_y_recursos.scd").openOS;
/*
2.1 Sonido

¿Qué es el Sonido?

El sonido resulta de la perturbación mecánica de un objeto en un medio elástico (medios con la capacidad de experimentar deformaciones reversibles frente a la acción de fuerzas externas, recuperando su configuración original al cesar su acción).
*/

"https://www.youtube.com/watch?v=XOCGb5ZGEV8".openOS;

//Estas perturbaciones generan vibraciones conocidas como ondas mecánicas (perturbaciones que avanzan o se propagan en un medio material).

(thisProcess.nowExecutingPath.dirname +/+ "media/comp-rare.gif").openOS;
(thisProcess.nowExecutingPath.dirname +/+ "media/direcciones.gif").openOS;
(thisProcess.nowExecutingPath.dirname +/+ "media/comp-rare-sin.gif").openOS;

//Los humanos percibimos el sonido debido al cambio de presión del aire al interior de nuestros oídos, causando que nuestro típano vibre.

(thisProcess.nowExecutingPath.dirname +/+ "media/escucha.gif").openOS;

//Si la presión varía deacuerdo a un patrón repetitivo, hablamos de una forma de onda periódica.
{SinOsc.ar(220,mul: 0.3)}.plot(0.03);

//Si no hay un patrón discernible, hablamos de ruido.
{WhiteNoise.ar(0.2)}.plot(0.03);

//Enmedio de estos extremos existe un inmenso expectro de sonidos casi periódicos/ruidosos.

//Un ciclo perteneciente a una forma de onda periódica es llamada periodo.
(thisProcess.nowExecutingPath.dirname +/+ "media/periodo.png").openOS;

//El número de periodos por segundo definen la percepción de altura de un sonido (que tan grave o agudo es). Los ciclos por segundo se miden en Hertz (1Hz = 1 ciclo por segundo). A mayor cantidad de hz, más agudo será un sonido y viceversa. n

{SinOsc.ar(100)}.scope;
{SinOsc.ar(400)}.scope;

//IMPORTANTE: Ctrl +  . es el atajo de teclado que detiene todos los procesos de supercollider en el servidor. Es nuestra red de seguridad para detener el sonido si llega a necesitarse.

//La mayoría de los objetos que producen sonido en SC reciben como argumento frecuencia en Hz. Si queremos trabajar con notas o números MIDI, es posible convertir estos parámetros a frecuencia con los siguientes métodos:

60.midicps; // Número MIDI a frecuencia
"A3".namecps; //Nombre de una nota a frecuencia (Índice 3 = octava central)

{SinOsc.ar(freq: 60.midicps)}.scope;
{SinOsc.ar(freq: "A3".namecps)}.scope;

//Podemos revisar la frecuencia fundamental de un sonido utilizando el analizador de frecuencias

{SinOsc.ar(freq: 69.midicps)}.play;FreqScope.new(server: s,scopeColor: Color.green);

//Por otro lado, la amplitud de una forma de onda mide el cambio de presión en un medio. La amplitud es percibida como "volumen": qué tan fuerte o quedo es un sonido. A mayor amplitud, más fuerte y viceversa.

(thisProcess.nowExecutingPath.dirname +/+ "media/periodo.png").openOS;

{[SinOsc.ar(mul:0.1),SinOsc.ar(mul:0.99)]}.plot(0.1).superpose_(true).plotColor_([Color.red,Color.blue]);

{SinOsc.ar(mul: 0.1)}.scope;
{SinOsc.ar(mul: 0.99)}.scope;

//SuperCollider mide la amplitud en un rango del 1 al 0. Sin embargo, es posible convertir ese rango a decibeles full scale con el método:

0.5.ampdb;
-6.0205999132796.dbamp;

{SinOsc.ar(mul: -6.0205999132796.dbamp)!2}.scope;

//Se puede monitorear la amplitud general de entradas y salidas de SC con:
s.meter;

//El punto de inicio de una forma de onda periódica en el eje de amplitud (y) es llamado fase. Normalmente el punto de inicio es 0 pero puede desplazarse usando radianes.

{SinOsc.ar(phase:0)}.plot(0.01);

(thisProcess.nowExecutingPath.dirname +/+ "media/fase-rad.png").openOS; //Tabla guía de fase a radianes

{SinOsc.ar(phase: pi/2)}.plot(0.01);

//SC sólo admite radianes como valores de fase. Sin embargo, pueden utilizarse grados convertidos a radianes con el siguiente método:

90.degrad;
{SinOsc.ar(phase:90.degrad)}.plot(0.01);

/*
Fuentes:
Eduardo Reck Miranda - Computer Sound Design
https://www.flippingphysics.com/sound.html
https://jvaraujo.art/programacioncreativa/capitulo-7/06-generar-sonidos/
*/

//Siguiente tutorial
(PathName.new(thisProcess.nowExecutingPath).parentPath+/+"2.2_Audio digital.scd").openOS;
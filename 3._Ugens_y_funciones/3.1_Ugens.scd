/*
Los generadores de unidades (unit generators o Ugens) se usan para generar y procesar señales en el servidor.

Señal:
Variación de magnitud que se utiliza para transmitir información.

Los Ugens son utilizados para analizar, sintetizar y procesar señales de audio, control e inicialización.

Las señales de audio se procesan en la frecuencia de muestreo establecida para el servidor.
*/

Server.default.sampleRate;
{SinOsc.ar(1)}.plot(1);

/*
Por defecto, las señales de control procesan muestras con una frecuencia 64 veces más lenta que la frecuencia de muestreo del servidor (1 muestra por cada 64 de audio).
*/

Server.default.options.blockSize;

//Frecuencia de muestreo de señales de control en distintos SampleRates del servidor.

44100/64;
48000/64;
96000/64;

{SinOsc.kr(1)}.plot(1);

//Comparación de señales de audio y control a 1 hz
{[SinOsc.ar(1),SinOsc.kr(1)]}.plot(1).plotColor_([Color.blue,Color.red]);

//Comparación de señales de audio y control a 1000 hz
{[SinOsc.ar(10000,270.degrad),SinOsc.kr(1000)]}.plot(0.1).plotColor_([Color.blue,Color.red]);

//Comparación de señales de audio y control a 187.5 hz
{[SinOsc.ar(187.5,270.degrad),SinOsc.kr(187.5)]}.plot(0.1).plotColor_([Color.blue,Color.red]);

//Comparación sonora de señal de control vs señal de audio para modular un parámetro
{SinOsc.ar(300 + SinOsc.ar(100).range(-30,30))}.play;
{SinOsc.ar(300 + SinOsc.kr(100).range(-30,30))}.play;

//Por otra parte, la frecuencia de inicialización establece solo un valor inicial que no tendrá cambios posteriores.

/*
Es recomendable usar kr siempre que sea posible para ahorrar recursos de computo.

Un Ugen puede recibir como entrada otras señales o números fijos.

Cada sonido producido por SC es el resultado de un generador de unidades.

Los Ugens nos proveen de un sistema modular eficiente para crear redes complejas de señales.
*/

//Podemos visualizar las cantidades generadas por un UGen con el método .poll
{SinOsc.ar(50).poll(20)}.play;

//Es recomendable explorar los Ugens listados en el árbol de clases


//Siguiente tutorial
(PathName.new(thisProcess.nowExecutingPath).parentPath+/+"3.2_Ugens_basicos_de_produccion_de_sonido.scd").openOS;

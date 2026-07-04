/*
Los generadores de unidades (unit generators o Ugens) se usan para generar y procesar señales en el servidor.

Señal:
Variación de magnitud que se utiliza para transmitir información.

Los Ugens son utilizados para analizar, sintetizar y procesar señales de audio, control e inicialización.

Las señales de audio se procesan en la frecuencia de muestreo establecida para el servidor.
*/

Server.default.sampleRate;

/*
Por defecto, las señales de control procesan muestras con una frecuencia 64 veces más lenta que la frecuencia de muestreo del servidor (1 muestra por cada 64 de audio).
*/

Server.default.options.blockSize;

//Frecuencia de muestreo de señales de control en distintos SampleRates del servidor.

44100/64;
48000/64;
96000/64;

//Comparación de señales de audio y control a 1 hz
{[SinOsc.ar(1),SinOsc.kr(1)]}.plot(1).plotColor_([Color.blue,Color.red]);

//Comparación de señales de audio y control a 187.5 hz
{[SinOsc.ar(187.5,270.degrad),SinOsc.kr(187.5)]}.plot(0.1).plotColor_([Color.blue,Color.red]);

//Comparación de señales de audio y control a 1000 hz
{[SinOsc.ar(10000,270.degrad),SinOsc.kr(1000)]}.plot(0.1).plotColor_([Color.blue,Color.red]);

//Comparación sonora de señal de control vs señal de audio para modular un parámetro

{SinOsc.ar(300 + SinOsc.ar(100).range(-30,30))}.play;

{SinOsc.ar(300 + SinOsc.kr(100).range(-30,30))}.play;

/*
Es recomendable usar kr siempre que sea posible para ahorrar recursos de computo.

Un Ugen puede recibir como entrada otras señales o números fijos.

Cada sonido producido por SC es el resultado de un generador de unidades.

Los Ugens nos proveen de un sistema modular eficiente para crear redes complejas de señales.
*/

{SinOsc.ar(50).poll(20)}.play;

//Es recomendable explorar los Ugens listados en el árbol de clases.



UGen Processing Model



Scalar Rate	\scalar or ir	Calculated once at instantiation	Constant parameters

The SuperCollider server executes UGens in a predefined order determined by their topological sort in the synthesis graph. Each UGen's calc function reads from its inputs, processes the data, and writes to its outputs.

Unit Generators (UGens) form the core of SuperCollider's audio synthesis engine. They are C++ classes that implement DSP algorithms and are connected to create complex synthesis networks. The UGen architecture provides a flexible and efficient framework for real-time audio processing.

Key aspects of the UGen system include:

    Processing at multiple rates (audio, control, scalar)
    Efficient memory access through specialized macros
    Rate-specific calculation functions
    SIMD optimizations for performance
    Comprehensive testing framework

Understanding the UGen architecture is essential for developing new UGens or extending the SuperCollider synthesis engine.

Unit Generators and Synths
Introduction to some fundamental concepts

A unit generator is an object that processes or generates sound. There are many classes of unit generators, all of which derive from the class UGen.

Unit generators in SuperCollider can have many inputs, but always have a single output. Unit generator classes which would naturally have several outputs such as a panner, return an array of unit generators when instantiated. The convention of having only a single output per unit generator allows the implementation of multiple channels by using arrays of unit generators. (See Multichannel Expansion for more details.)
Instantiation. Audio Rate, Control Rate

A unit generator is created by sending the 'ar' or 'kr' message to the unit generator's class object. The 'ar' message creates a unit generator that runs at audio rate. The 'kr' message creates a unit generator that runs at control rate. Control rate unit generators are used for low frequency or slowly changing control signals. Control rate unit generators produce only a single sample per control cycle and therefore use less processing power than audio rate unit generators.

The input parameters for a unit generator are given in the documentation for that class.

FSinOsc.ar(800, 0.0, 0.2); // create a sine oscillator at 800 Hz, phase 0.0, amplitude 0.2

A unit generator's signal inputs can be other unit generators, scalars, or arrays of unit generators and scalars.


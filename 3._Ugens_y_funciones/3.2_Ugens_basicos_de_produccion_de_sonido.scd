/*
UGens generadores de sonido en SuperCollider

Este tutorial reúne algunos UGens básicos para producir sonido junto con una breve descripción y ejemplos.

IMPORTANTE:
Antes de ejecutar los ejemplos, inicia el servidor y recuerda usar Ctrl + . si algo no va deacuerdo a lo esperado.

1. SinOsc
Oscilador senoidal.
Produce una onda senoidal pura.
Útil para tonos simples, síntesis aditiva, LFOs y pruebas básicas.
*/

{SinOsc.ar(freq:440,mul:0.2)}.scope;

/*
2. Saw
Oscilador de onda diente de sierra.
Muy usado en síntesis sustractiva.
*/

{Saw.ar(freq: 220,mul: 0.2)}.scope;

/*
3. Pulse
Oscilador de onda cuadrada.
*/

{Pulse.ar(freq: 220, width: 0.5,mul: 0.2)}.scope;

/*
4. WhiteNoise
Ruido blanco.
Contiene energía distribuida de manera relativamente uniforme en todo el espectro audible.
*/

{WhiteNoise.ar(0.2)}.scope;

/*
5. BrownNoise
Ruido café.
Tiene más energía en las frecuencias graves que el ruido blanco.
*/

{BrownNoise.ar(mul: 0.5)}.scope;

/*
6. ClipNoise
Ruido que alterna entre valores extremos: -1 y 1.
*/

{ClipNoise.ar(mul: 0.6)}.scope;

/*
7. Dust
Generador de impulsos aleatorios.
Produce clicks distribuidos aleatoriamente.
*/

{Dust.ar(density: 20,mul: 0.4)}.scope;

/*
8. Gendy1
Generador dinámico estocástico. Basado en síntesis dinámica estocástica, asociada a Iannis Xenakis.
*/
{Gendy1.ar(minfreq: 100,maxfreq: 800, ampscale: 0.5, durscale: 0.5, mul: 0.2)}.play;

//Siguiente tutorial
(PathName.new(thisProcess.nowExecutingPath).parentPath+/+"3.3_Funciones.scd").openOS;

//Tutorial anterior
(PathName.new(thisProcess.nowExecutingPath).parentPath+/+"3.1_Ugens.scd").openOS;
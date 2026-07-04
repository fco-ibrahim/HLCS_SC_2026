/*
Relojes y rutinas en SuperCollider

Hasta ahora hemos ejecutado sonidos y procesos de forma directa. Sin embargo, muchas veces necesitamos organizar eventos en el tiempo: repetir sonidos, esperar algunos segundos, crear patrones simples o controlar cambios entre una acción y otra.

Para esto SuperCollider utiliza relojes y rutinas.

Un reloj es un objeto encargado de medir el tiempo y programar acciones futuras.

Una rutina es una función especial que puede pausarse y continuar después. El método .wait indica cuántos segundos debe esperar la rutina antes de continuar.
*/

(
Routine({
	"Inicio".postln;
	1.wait;
	"Pasó un segundo".postln;
	1.wait;
	"Pasaron dos segundos".postln;
	1.wait;
	"Pasaron tres segundos".postln;
	1.wait;
	"Fin".postln;
}).play;
)


//Una rutina puede ejecutar sonidos, esperar y ejecutar nuevos sonidos.

(
Routine({
	{SinOsc.ar(440, mul: 0.2)}.play;
	1.wait;
	{SinOsc.ar(660, mul: 0.2)}.play;
	1.wait;
	{SinOsc.ar(880, mul: 0.2)}.play;
	1.wait;
	{SinOsc.ar(1100, mul: 0.2)}.play;
	1.wait;
	{SinOsc.ar(1320, mul: 0.2)}.play;
}).play;
)


//Si guardamos la rutina en una variable, podemos reproducirla y detenerla después.

f = Routine({
	"Inicio".postln;
	1.wait;
	"Pasó un segundo".postln;
	1.wait;
	"Pasaron dos segundos".postln;
	1.wait;
	"Pasaron tres segundos".postln;
	1.wait;
	"Pasaron cuatro segundos".postln;
	1.wait;
	"Pasaron cinco segundos".postln;
	1.wait;
	"Pasaron seis segundos".postln;
	1.wait;
	"Pasaron siete segundos".postln;
	1.wait;
	"Pasaron ocho segundos".postln;
	1.wait;
	"Pasaron nueve segundos".postln;
	1.wait;
	"Fin".postln;
});

f.play;
f.reset;
f.stop;

//El método loop aplicado a una función dentro de una rutina permite repetirla indefinidamente.

(
Routine({
	{"HOLA".postln;
		1.wait
	}.loop;
}).play;
)

/*
Por defecto, una rutina se reproduce usando TempoClock.default.
TempoClock mide el tiempo en pulsos o beats.
Si el tempo es 1, cada pulso dura 1 segundo.
Si el tempo es 2, ocurren 2 pulsos por segundo.
Y así sucesivamente...
*/

TempoClock.default.tempo;

//Para cambiar el tempo por defecto se usa la siguiente línea de código.
TempoClock.default.tempo = 140/60; //para usar bpm se utiliza la fórmula tempo deseado /60

//Ahora .wait ya no espera segundos exactos, sino pulsos del TempoClock.

(
Routine({
	{
		"PULSO".postln;
		1.wait;
	}.loop;
}).play(TempoClock.default);
)


//Regresamos el tempo por defecto a 1 (60 bpm).
TempoClock.default.tempo = 1;


//Podemos crear TempoClocks independientes para controlar rutinas a distintos tempos.

~reloj1 = TempoClock(222/60);
~reloj2 = TempoClock(500/60);


r = Routine({
	{
		"PULSO".postln;
		1.wait;
	}.loop;
}).play(TempoClock.default);

g = Routine({
	{
		"BEAT".postln;
		1.wait;
	}.loop;
}).play(~reloj1);

h = Routine({
	{
		"otro".postln;
		1.wait;
	}.loop;
}).play(~reloj2);


//El método .fork en una función es una forma breve de crear y reproducir una rutina. Es útil para escribir procesos temporales de manera rápida.
{
	"Inicio con fork".postln;
	1.wait;
	"Después de esperar".postln;
	1.wait;
	"FIN".postln;
}.fork(~reloj2);
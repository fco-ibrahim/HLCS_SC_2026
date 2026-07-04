/*
Funciones en SuperCollider

Una función es una expresión que define operaciones a ser realizadas cuando la función sea ejecutada.

En SuperCollider, las funciones se escriben entre llaves:
*/

//Para obtener valores usamos el método .value
{(9*5)/(19+6)}.value

//Para obtener el resultado sonoro de uno o varios Ugens utilizamos .play
{Pulse.ar(220)}.play;

//Si solo evaluamos la función sin un método, SuperCollider nos muestra la función, pero no ejecuta su contenido.
{Pulse.ar(220)}


/*
Podemos guardar funciones en variables para usarlas más de una vez.
Una variable representa un contenedor o un espacio donde se almacenan valores.

A cada variable se le asigna un nombre descriptivo o un identificador que se refiere al valor guardado.

En SC existen variables globales y locales.

Las variables globales son variables que puede usarse desde cualquier parte del documento o de la sesión de trabajo. Se definen con las letras de la "a" a la "z" o con el símbolo "~".

Ejemplos de varaibles globales:
*/

~operacion = {(10*5)/(19+6)};

a = {Saw.ar(220,0.4)};

//Por otro lado, las variables locales se definen con el término "var" y pueden usarse únicamente dentro de los límites de una determinada función.

{
	var freq; // variable local (solo puedo llamarla dentro de esta función)
	freq = "D2".namecps;
	SinOsc.ar(freq, 0, 0.4)
}.play;




//Otro componente común de las funciones son los argumentos, que son valores que una función puede recibir desde afuera. Sirven para hacer funciones más flexibles. Se definen dentro de una función con el termino "arg".

~saludar = {
	arg nombre;
    ("Hola " ++ nombre)
};

~saludar.value("Alejandra");
~saludar.value("SuperCollider");
~saludar.value("mundo");
~saludar.value("amigxs");

//También podemos escribir los argumentos entre barras verticales en lugar de "arg"
*/

~saludar = {
	|nombre|
    ("Hola " ++ nombre)
};

~saludar.value("José");

//Un argumento puede tener un valor por defecto.De esta forma si no enviamos otro valor, la función lo usará.

(
~tono = {
    |freq = 440, amp = 0.2|
    SinOsc.ar(freq: freq, mul: amp);
};
)

{~tono.value(220)}.scope;
{~tono.value(1000)}.scope;
{~tono.value}.scope;

//Para ser capaces de modificar y detener una función de audio una vez ejecutada, debemos almacenar su reproducción en una variable.

a = {
	|freq = 400, amp = 0.5|
	Saw.ar(freq,amp)
}; //Ugen dentro de una función (a)

b = a.play; //Reproducción de la función "a", almacenada en la variable "b".

//Una vez echado a andar, es posible modificar argumentos con el método .set
b.set(\freq, 600, \amp, 0.2);
b.set(\freq, 320, \amp, 0.8);
b.set(\freq, 456, \amp, 0.5);

//También es posible detenerlo abrupta o gradualmente con los métodos .free y .release, respectivamente.
b.free;
b.release(3);

//Tutorial anterior
(PathName.new(thisProcess.nowExecutingPath).parentPath+/+"3.2_Ugens_basicos_de_produccion_de_sonido.scd").openOS;

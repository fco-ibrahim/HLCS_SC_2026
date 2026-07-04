/* Una onda sonora puede grabarse en una cinta magnética para reproducirse posteriormente usando electromagnetismo. Esta es una forma de registro analógico.

Analógica(o):
adj. Dicho de un aparato o de un sistema: Que presenta información, especialmente una medida, mediante una magnitud física continua proporcional al valor de dicha información.

*/

(PathName.new(thisProcess.nowExecutingPath).parentPath +/+ "media/analogico.png").openOS;

/*
Las computadoras sin embargo, son tecnología digital, es decir, operan por medio de matemáticas discretas.

Discreta(o):
adj. Mat. Dicho de una magnitud o de un conjunto: Que toma o está formado por valores separados.

A diferencia de un medio analógico, un medio digital no registra un señal de manera continua, la almacena como miles de fragmentos continuos.

¿Cuántos fragmentos?
Los estándares más comunes son 44100 veces por segundo o 48000 veces por segundo.
*/

(PathName.new(thisProcess.nowExecutingPath).parentPath +/+ "media/digital.png").openOS;

//El número de fragmentos capturados por segundo es conocido como frecuencia de sampleo (o sample rate). En SC se establece antes de iniciar el servidor con la siguiente línea:

Server.default.options.sampleRate_(48000);

//Para comprobarlo usamos
Server.default.sampleRate;

/*
Además de una frecuencia de muestreo, es igualmente útil definir la resolución de cada muestra.

Debido a la dificultad de las computadoras para representar números de punto flotante, los valores de cada muestra se redondean a números enteros. La cantidad de valores disponibles a tomar en cuenta para redondear depende de los bits destinados a este propósito.

A mayor cantidad de bits, mayor es el rango dinámico que un sistema de audio digital puede representar.
*/

(PathName.new(thisProcess.nowExecutingPath).parentPath +/+ "media/bitDepth.png").openOS;

/*
Este parámetro se conoce como profundidad de bits y también define los decibeles máximos que puede representar un registro de audio digital. Esto se calcula con la fórmula:

decibeles máximos = número de bits * 6.11

SuperCollider trabaja por defecto en 32 bits y esto no puede modificarse. La profundidad de bits real de reproducción de audio estará dictada por la configuración del driver de audio de nuestra computadora.
*/
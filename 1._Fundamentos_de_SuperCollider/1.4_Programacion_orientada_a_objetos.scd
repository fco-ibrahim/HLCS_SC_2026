/*
BREVE INTRODUCCIÓN A LA PROGRAMACIÓN ORIENTADA A OBJETOS

En programación un OBJETO es un fragmento de código que modela un elemento del mundo real.

Los objetos tienen propiedades (atributos) y comportamientos (métodos).Los atributos representan las cualidades de un objeto. Los métodos son las acciones que puede realizar.

Una clase es una especie de plano que define las características y las acciones de un objeto antes de crearlo. Pueden crearse  uno o más objetos basados en esa clase. A esto se le llama instanciación. Una vez que tienes una instancia de la clase, es posible acceder a sus atributos y llamar a sus métodos.

Carro.acelera(0 km/h, 150 km/h, 30 segundos);

Si cada clase moldea un aspecto de la realidad, estas se pueden usar en conjunto para moldear aspectos complejos de la realidad.

CarroPolicia.vigila(km 3, 2 policias);
Policia.come(dona,café);
Dona.cae(1s);
Carro.detiene(4s);

Los objetos ocultan sus detalles internos y los expone únicamente mediante accesos controlados a sus datos y métodos.

La POO permite la creación de nuevas clases basadas en clases existentes.  Esto se llama heredar e implica que las clases tienen disponibles algunas de las características de las clases superiores en jerarquía.

La síntaxis usual de los objetos de SuperCollider es:

Clase.método(argumento 1,argumento 2, argumento 3);
*/

{SinOsc.ar(440,0,0.5,0)}.scope();

//Más sobre programación orientada a objetos
"https://www.luisllamas.es/curso-programacion-orientada-objetos/".openOS;
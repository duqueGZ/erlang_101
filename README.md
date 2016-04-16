# Erlang 101 (Imatia R Team Workshop)
Introducción (con ejemplos) a Erlang. Nos centraremos aquí en el subconjunto secuencial del lenguaje

## 1. ¿Por qué Erlang? (http://veldstra.org/whyerlang/)
* Es un lenguaje de programación orientado a sistemas escalables, tolerantes a fallos, distribuidos, *non-stop*, *soft-realtime*...
* Utilizado (y probado) por grandes desarrolladores
* Permite ahorrar tiempo y dinero
* Es fácil de aprender
* Es un lenguaje donde el concepto de concurrencia es inherente, ligero.
* Permite reemplazamiento de código "en caliente"
* Permite la implantación de sistemas distribuidos de forma trasparente
* Incluye potentes herramientas y librerías para el desarrollador, como OTP.
* Y más... (gratuito y de código abierto, multi-plataforma, bien soportado, fácil de integrar con otras tecnologías, incluye un compilador de alto rendimiento (HiPE), permite el uso de tipado estático (si es necesario), facilita el trabajo con datos binarios gracias a la *Bit syntax*...)

## 2. Introducción
- Se trata primordialmente de un lenguaje concurrente.
- Su subconjunto secuencial es un lenguaje funcional, con evaluación estricta (*eager*), asignación única y tipado dinámico.
- Originalmente fue un lenguaje propietario de Ericsson. Desde 1998, fue cedido como código abierto.
- Su nombre se debe al matemático A.K. Erlang, además de corresponderse con la abreviación de _**ER**lang **LANG**uage_.

## 3. Instalación y Shell
* Instalación: http://www.erlang.org/download.html
* Shell
    * Expresiones aritméticas (enteros y punto flotante)
    * Variables
    * Atoms
    * Strings
        * En realidad son listas de enteros
    * Tuplas
    * Listas

## 4. Programación Secuencial
* Módulos y funciones
* Funs: funciones anónimas
    * Las funciones que reciben funs como parámetro o devuelven funs se conocen como *funciones de alto orden*.
* Procesado de listas, *lists comprehensions* y listas en orden natural
    * Con la sintaxis de *lists comprehensions* podemos construir y trabajar con listas con la necesidad de menos código y un resultado final más claro.
    * Cuando se construyen listas usando funciones *tail recursive*, el resultado final tendrá los elementos en el orden inverso al esperado. En esos casos, la forma más eficiente (y, por tanto, correcta) de reordenar la lista es usar la función *reverse* del módulo *lists* (un enfoque mucho mejor que el operador '++' sobre listas).
* Registros
    * En realidad son tuplas con etiquetas para cada uno de los campos.
* Expresiones Case / If
* Acumuladores
    * Son la forma de poder evitar la necesidad de recorrer dos veces la misma lista para, por ejemplo, separar sus elementos en dos grupos.
* BIFs: *Built-In Functions* (http://www.erlang.org/doc/man/erlang.html)
   * Implementadas como operaciones primitivas en la máquina virtual de Erlang.
   * Suelen servir para hacer cosas imposibles de programar en Erlang.
* Binaries
   * Sirven para almacenar grandes cantidades de datos.
   * Almacenan datos con un consumo de memoria muy eficiente.
   * El *input* y *output* de binaries es también muy eficiente en Erlang. Se manejan mediante el uso de *BIFs*, o usando *Bit Syntax*.
* Bit Syntax
   * Extensión del pattern matching a binaries.
* Y más...

## 5. Excepciones
* exit / throw / erlang:error
* try... catch
* catch
* mensajes de error
* stack traces

## 6. Erlang en funcionamiento

## 7. Referencias

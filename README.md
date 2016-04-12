# Erlang 101
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
* Instalación (Windows)
* Shell
    * expresiones aritméticas
    * variables
    * números de punto flotante
    * atoms
    * tuplas
    * listas
    * strings
    * pattern matching (en más detalle)

## 4. Programación Secuencial
* módulos
* funciones
* funs: funciones anónimas
* procesado de listas, lists comprehensions y lists en orden natural
* registros
* expresiones case/if
* acumuladores

## 5. Excepciones
* exit / throw / erlang:error
* try... catch
* catch
* mensajes de error
* stack traces

## 6. Programación Secuencial Avanzada
* BIFs
* Binaries
* Bit Syntax
* Otros: apply, atributos, block expressions (begin...end), booleanos, conjunto de caracteres, comentarios, epp (preprocesador), secuencias de escape, secuencias de expresiones, referencias a funciones, inclusión de ficheros, operaciones ++/-- sobre listas, macros, match operator en patrones, números, precedencia de operadores, process dictionary, referencias, comparación de términos, underscore variables

## 7. Erlang en funcionamiento

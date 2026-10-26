## 1. ¿Cuáles son las principales diferencias entre Haskell y Rust?

Básicamente son primos lejanos: los dos son lenguajes "raros" comparados con Python o Java, pero apuntan a cosas distintas.

- **Paradigma:** Haskell es puramente funcional (todo son funciones, nada se muta). Rust es más un "todo terreno": mezcla lo imperativo, lo funcional y lo orientado a objetos.
- **Memoria:** Rust no tiene garbage collector; usa un sistema de ownership/borrowing que revisa en tiempo de compilación que no haya errores de memoria (nada de punteros sueltos). Haskell sí usa garbage collector, como Java o Python.
- **Concurrencia:** Haskell se apoya en la inmutabilidad y la evaluación perezosa para paralelizar cosas fácil. Rust usa su sistema de ownership para garantizar que los hilos no se pisen entre sí ("fearless concurrency" le dicen).
- **Tipos:** ambos tienen tipado fuerte, pero Haskell tiene un sistema de tipos más "matemático" (con inferencia muy potente), mientras que Rust usa traits y lifetimes, pensado más para seguridad de memoria que para expresividad pura.
- **Errores:** Haskell maneja errores con monads (`Maybe`, `Either`). Rust usa `Result` y `Option`, más simple de entender si vienes de otros lenguajes.
- **Para qué se usan en la vida real:** Rust se usa mucho para sistemas, backend de alto rendimiento, reemplazar C/C++ (ej. partes de Firefox, Discord). Haskell se ve más en investigación, finanzas (contratos, análisis de riesgo) y compiladores.

En resumen: Rust es "control total y seguridad sin sacrificar velocidad", Haskell es "pureza matemática y código muy predecible, aunque cueste más aprenderlo".

## 2. ¿Por qué Haskell no ha alcanzado adopción significativa en la industria?

Aquí hay varias razones que se repiten en foros y discusiones de la propia comunidad de Haskell:

- **Es genuinamente difícil de aprender.** No es solo la sintaxis, es un cambio de mentalidad completo: nada de variables que cambian, todo por recursión, conceptos como monads que a mucha gente le cuestan al inicio.
- **La industria no siempre premia "hacerlo bien", premia "hacerlo rápido y barato".** Las empresas priorizan sacar features rápido, y ahí Python o JS ganan aunque tengan más bugs. Haskell brilla cuando la corrección importa mucho, pero eso no es la prioridad de la mayoría de negocios.
- **No tiene un "padrino" corporativo grande.** Rust tiene a Mozilla (y ahora a media industria) empujándolo, OCaml tiene a Jane Street, Clojure tiene a Nubank. Haskell nunca tuvo una empresa gigante que lo empujara con la misma fuerza.
- **Está más orientado a investigación que a producto.** La propia comunidad de Haskell lo dice: su público principal históricamente ha sido académicos e investigadores, no equipos de industria armando productos comerciales.
- **Rust "le robó músculo".** Mucha gente que quería seguridad y corrección (lo que Haskell ofrecía) ahora se va con Rust, porque da garantías parecidas pero con mejor rendimiento y una curva de aprendizaje algo más suave.

O sea: no es que Haskell sea malo, es que pide mucho esfuerzo de aprendizaje, no tiene tanto respaldo comercial, y otros lenguajes (como Rust) terminaron cubriendo el mismo nicho de "seguridad y corrección" de forma más accesible.

## 3. Explica a alguien no-CC la diferencia entre Git y GitHub

Imagina que estás escribiendo un trabajo en equipo.

- **Git** es como el "control de cambios" de Word, pero mucho más potente: cada vez que guardas un avance importante, toma una foto completa del documento con fecha, autor y una nota de qué cambiaste. Si algo se rompe, puedes regresar a cualquier foto anterior. Funciona en tu computadora, sin necesidad de internet.
- **GitHub** es como el Google Drive donde subes esas fotos para que tus compañeros las vean, las bajen y trabajen sobre ellas también. Además de guardar el historial, tiene funciones extra: comentar cambios, revisar antes de aceptar algo, organizar tareas pendientes, y una página pública (o privada) del proyecto.

Frase corta para quedarte con la idea: **Git es la herramienta de guardar versiones, GitHub es la nube donde las compartes.** Git podría existir sin GitHub (de hecho hay alternativas como GitLab o Bitbucket que hacen lo mismo), pero GitHub no existiría sin Git.

## Referencias

Angelosanto, M. (2023). *Rust vs. Haskell: A performance comparison*. LogRocket Blog. https://dev.to/logrocket/rust-vs-haskell-a-performance-comparison-25gd

Discourse Haskell. (2023). *Why Haskell has narrowest ecosystem in industrial*. https://discourse.haskell.org/t/why-haskell-has-narrowest-ecosystem-in-industrial/8849

Discourse Haskell. (2023). *Commercial Haskell should go after Python / Julia, not Rust*. https://discourse.haskell.org/t/commercial-haskell-should-go-after-python-julia-not-rust/6964

Discourse Haskell. (2024). *My talk "functional programming failed successfully" is now available*. https://discourse.haskell.org/t/my-talk-functional-programming-failed-successfully-is-now-available/9725

Nordic APIs. (s.f.). *Rust vs. Haskell: Which language is best for API design?* https://nordicapis.com/rust-vs-haskell-which-language-is-best-for-api-design/

StackShare. (s.f.). *Haskell vs Rust*. https://stackshare.io/stackups/haskell-vs-rust

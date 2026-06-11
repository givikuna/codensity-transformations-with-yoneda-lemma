#block(breakable: false, width: 90% + 1in)[
  #set align(center)
  #text(weight: "bold")[Abstract]
  #set align(left)

  Functional programming languages, such as Haskell, rely heavily on monads to sequence operations and encapsulate side effects within a purely functional environment.

  However, constructing trees using, for example, the Free monad (for abstract syntax trees (ASTs)) often results in a quadratic time complexity ($"O"(n^2$), when bind operations are left-associated (which is often the case).

  This paper will explore the Codensity Transformation (in Haskell), a compiler optimization technique that translates these operations into a continuation-passing style to achieve a linear time complexity ($"O"(n)$).

  By formalizing Haskell's type system and \[monadic\] operations within the framework of Category Theory, specifically utilizing Kleisli categories, the Hask category, and the Yoneda Lemma, we prove that the Codensity monad is naturally isomorphic to the original monad.

  This isomorphism guarantees that the optimization into $"O"(n)$ complexity perfectly preserves the logic and functionality of the code.

  Ultimately, this is to demonstrate how abstract categorical concepts can provide rigorous and practical guarantees for software function and performance.
]

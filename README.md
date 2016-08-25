# Running OCaml in Haskell

You love Haskell, but you are bored with lazyness ?

Force Haskell, to behave like a call-by-value language using continuation.

## Compile

`make`generates cbv.out

## Run

`./cbv.out` (no shit!)

Expression to evaluate is hard-coded. What you think ? I am going to make a generic tool ? Up to you to dive into the code !

## What on earth are call-by-value and call-by-name ?

You can check what everybody will read [Wikipedia](https://en.wikipedia.org/wiki/Evaluation_strategy) which is a very good introduction to those concepts, or you would prefer to read the words of an expert [The Expert](http://pauillac.inria.fr/~xleroy/mpri/2-4/semantics.pdf).

## Ok, but can you explain what a continuations is ?

You really want to become a master huh ? Try the usual starter [Wikipedia](https://en.wikipedia.org/wiki/Continuation). Does an expert explains that ? [The Expert](http://pauillac.inria.fr/~xleroy/mpri/2-4/transformations.pdf) (start at slide 49).

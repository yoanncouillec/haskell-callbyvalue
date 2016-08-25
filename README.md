# Running OCaml in Haskell

You love Haskell, but you are bored with lazyness ?

Force Haskell, to behave like a call-by-value language using continuation

## Compile

`make`generates cbv.out

## Run

`./cbv.out` (no shit!)

Expression to evaluate is hard-coded. What you think ? I am going to make a generic tool ? Up to you to dive into the code !

## What on earth are call-by-value and call-by-name ?

You can check what everybody will read [wikipedia](https://en.wikipedia.org/wiki/Evaluation_strategy) which is a very good introduction to those concepts, or you would prefer to read words of "the king" [xavierleroy](http://pauillac.inria.fr/~xleroy/mpri/2-4/semantics.pdf)

# Scheme Language Interpreter

This is a language interpreter for Scheme, which is part of the Lisp Language Family. For more info you can read more here: https://en.wikipedia.org/wiki/Scheme_(programming_language). It is written in Python and Scheme.



# What can this Interpreter do?

## Evaulates Scheme Expressions
It can evaluate built-in procedure calls, allowing it to compute expressions and nested expressions like a Calculator. If you run python3 scheme.py, you can now add, multiply, and more. Furthermore, it can assign variables with values, expressions, or procedures, using the Define keyword. You can also build lists and quoted expressions.

### Example:    
scm> (+ 1 2)  
3   
scm> (* 3 4 (- 5 2) 1)  
36    
scm> (odd? 31)  
#t    
scm> (define a (+ 2 3))   ; Binds the name a to the value of (+ 2 3)  
a     
scm> (define (foo x) x)   ; Creates a procedure and binds it to the name foo  
foo   
scm> (quote hello)    
hello     
scm> '(cons 1 2)  ; Equivalent to (quote (cons 1 2))    
(cons 1 2)    


## Handles User-defined Procedures
It has the ability to call user-defined procedures, which are basically functions in most programming languages. These procedures are Lambda procedure, using the (lambda ...) special form, Named Lambda procedures, using the (define (...) ...) special form, and Mu procedure with Dynamic Scope. For more info on Lexical Scoping vs Dynamic Scoping you can read more here: https://en.wikipedia.org/wiki/Scope_(computer_science)#Lexical_scope_vs._dynamic_scope_2

### Examples:   
scm> (define (g y) (print y) (+ y 1))   
g   
scm> (g 3)    
3   
4   
scm> (define f (mu () (* a b)))   
f   
scm> (define g (lambda () (define a 4) (define b 5) (f)))   
g   
scm> (g)    
20    


# Learning Fortran

Some resources:
- https://www.youtube.com/watch?v=d_ZNWPNzspg
  (https://users.monash.edu.au/~dprice/teaching/fortran/lab-Fortran.pdf)
- https://web.stanford.edu/class/me200c/tutorial_90/
- https://fortran-lang.org/en/learn/
- https://www.fortrantutorial.com/
- https://www.fortran90.org/
- https://duckduckgo.com/?t=ffab&q=learn+fortran+90&atb=v350-1&ia=web


## Using Makefiles

### Variables in Makefiles

It's possible to override variables defined in the Makefile by setting
them in the call to make:

``` shell
make VAR=goodbye fun
```

Special variables:
- `$@` refers to target name
- `$<` refers to name of all the dependencies

Variables can be defined from other variables with various string
replacement options.

### Wildcard rule

Example in the Makefile for the `maths` program (see
[./Makefile](Makefile)): `%.o` says that the target is any file that
ends with the `.o` extension

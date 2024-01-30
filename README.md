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

### Compiling with Makefile when there are many module

If a file with a module is modified, then the dependent file should
also be recompiled. One way to ensure this is by using Makefile
dependency specification in the target, but it's difficult to specify
all the dependencies for bigger code. Plus, the recompilation
requirement is necessary only if the interface changes. One way could
be to: *ensure that the files are compiled in the correct order* (the
file with the module on which another depends should come before it)
and do the make cleanup call (with a `clean` target) when you know the
interface of a routine has changed.

A solution given thanks to `gfortran` is to generate dependencies target automatically (see the Makefile) and include the resulting file in the Makefile.

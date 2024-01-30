FC=gfortran
FFLAGS=-O3 -Wall -Wextra
SRC=area.f90 maths.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

maths: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

clean:
	rm *.o *.mod maths

DEPFLAGS=-M -cpp
deps: $(SRC)
	@$(FC) $(DEPFLAGS) $(SRC) > make.deps

make.deps: deps

include make.deps

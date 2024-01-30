VAR=hello
VAR2=world
VAR3=${VAR2:world=planet}

merry:
	@echo ${VAR}

fun: merry
	@echo ${VAR2} is $@ and $<

hay: merry
	@echo ${VAR3}

build:
	~/armips/build/armips hellogpu.s

exe:
	python3 bin2exe.py hellogpu.bin hellogpu.ps-exe


submodule:
	git submodule update --init --recursive
	
build:
	docker build -t virtual-environment-buildroot .

run:
	docker run --cpus="8" -it --rm -v ${PWD}:/root/repository/ virtual-environment-buildroot
.PHONY: build clean

build:
	# taken from https://github.com/blang/latex-docker/blob/42d2c532a09a00938331512fd2b539f9944c400c/latexdockercmd.sh
	docker run --rm --user="$(shell id -u):$(shell id -g)" --net=none -v "$(PWD)":/data blang/latex:ubuntu latexmk -shell-escape -interaction=nonstopmode -halt-on-error -output-directory=build -f -pdf main.tex

clean:
	find build/* ! -name '.gitkeep' -type f -exec rm -f {} +  || true
	find build/* ! -name '.gitkeep' -type d -exec rm -rf {} + || true

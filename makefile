install:
	mkdir out
	make generate

generate:
	sh generate.sh
clean:
	rm out/*

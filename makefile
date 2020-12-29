all:generate
install:
	mkdir out
	cp wall.sh ./scripts/
	make generate

generate:
	sh generate.sh
clean:
	rm out/*

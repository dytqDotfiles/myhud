all:generate
install:
	sh init.sh
	cp wall.sh ~/.scripts/
	mkdir out
	make generate

generate:
	sh generate.sh
clean:
	rm out/*

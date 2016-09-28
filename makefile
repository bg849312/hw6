all: game


build:
	g++ -c *.cc

game: game.o main.o othello.o
	g++ game.o main.o othello.o -o game

game.o: game.cc
	g++ -c game.cc
main.o: main.cc
	g++ -c main.cc
othello.o: othello.cc
	g++ -c othello.cc
clean:
	rm *o game

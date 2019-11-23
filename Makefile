CXX = g++
CXXFLAGS = -Wall -c -std=c++11
LDFLAGS = -lSDL2

SRC = $(wildcard src/*.cpp)
BIN = tetris

all : $(BIN)

$(BIN) : $(SRC:.cpp=.o)
	$(CXX) $^ $(LDFLAGS) -o $@

.cpp.o: 
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -f $(BIN) && rm -f $(wildcard src/*.o)

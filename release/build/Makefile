CC=GOARCH=amd64 go build
BIN=jeopardy-seeder
SRC=../../cmd/jeopardy-seeder.go
ENV_WINDOWS=GOOS=windows
REL_WINDOWS=windows
OUT_WINDOWS=../windows/
ENV_LINUX=GOOS=linux 
REL_LINUX=linux
OUT_LINUX=../linux/
ENV_MACOS=GOOS=darwin
REL_MACOS=darwin
OUT_MACOS=../macos/

all: windows macos linux

windows: 
	$(ENV_WINDOWS) $(CC) $(SRC)
	mkdir -p $(OUT_WINDOWS)
	mv $(BIN).exe $(OUT_WINDOWS)

linux:
	$(ENV_LINUX) $(CC) $(SRC)
	mkdir -p $(OUT_LINUX)
	mv $(BIN) $(OUT_LINUX)

macos:
	$(ENV_MACOS) $(CC) $(SRC)
	mkdir -p $(OUT_MACOS)
	mv $(BIN) $(OUT_MACOS)

.PHONY: all windows macos linux

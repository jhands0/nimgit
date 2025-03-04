lint: 
	@pr -e4 -t src/nimgit.nim

build:
	@nim c src/nimgit.nim
	
run:
	@nim r src/nimgit.nim

compile:
	mkdir -p class
	javac tmp1/Steven.java -d class
	javac tmp2/Steven.java -d class
	javac TestConflict.java -d class -cp class

run:
	java -cp class com.testconflict.steven.TestConflict

clean:
	rm -rf class/*

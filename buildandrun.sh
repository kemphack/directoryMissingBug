etlas run
cp dist/build/dirtest/dirtest.jar dirtest.jar
javac -cp ":dirtest.jar" Program.java
java -cp ".:dirtest.jar" Program

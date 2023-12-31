JFLAGS = -g
JC = javac
.SUFFIXES: .java .class
.java.class:
		$(JC) $(JFLAGS) $*.java

CLASSES = \
		Main/TokenType.java \
		Main/Token.java \
		Main/Scanner.java \
		Main/Expr.java \
		Main/Stmt.java \
		Main/Parser.java \
		Main/RuntimeError.java \
		Main/Break.java \
		Main/Continue.java \
		Main/Return.java \
		Main/Environment.java \
		Main/LoxCallable.java \
		Main/LoxFunction.java \
		Main/LoxInstance.java \
		Main/LoxClass.java \
		Main/Resolver.java \
		Main/Interpreter.java \
		Main/Lox.java

default: classes

classes: $(CLASSES:.java=.class)
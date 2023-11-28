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
		Main/AstPrinter.java \
		Main/RuntimeError.java \
		Main/Interpreter.java \
		Main/Lox.java \
		Util/GenerateAst.java

default: classes

classes: $(CLASSES:.java=.class)
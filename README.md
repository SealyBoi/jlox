# jlox
Interpreter for Lox built in Java. This is the interpreter built in the book 'Crafting Interpreters' by Robert Nystrom.

To build the project, clone it to your machine and, in the terminal, type 'make'. This will create the class files for the project.

To run the project as a CLI:
> java Main/Lox

To run the project on a file (like test.lox):
> java Main/Lox test.lox

This project was my second dive into building an interpreter (the first being MyFirstInterpreter built in TypeScript, which is also on my GitHub). I was able to learn a lot by following this, including but not limited to:
```
-tokens and lexing
-abstract syntax trees
-recursive descent parsing
-prefix and infix expressions
-runtime representation of objects
-interpreting code using the Visitor pattern
-lexical scope
-environment chains for storing variables
-control flow
-functions with parameters
-closures
-static variable resolution and error detection
-classes
-constructors
-fields
-methods
-inheritence
```

I will be moving on to the C version of this interpreter (known as clox), so expect that on my GitHub soon if it is not already present. The rest of this file is the rules for this language so that you may write your own scripts and test it out!

Hello world!
> print "Hello, world!";

Lox supports:
-Booleans
-Numbers
-Strings
-Nil (like null)
-Arithmetic (+,-,*,/)
-Unary (- and !)
-Comma Expressions Like C
-Ternary Conditions (a ? b : c;)
-Comparisons (<,<=,>,>=,==,!=)
-Logical Operators (and, or)

If a variable is not initialized upon creation, it is defaulted to nil:
```
var imAVariable = "here is my value!";
var iAmNil;
```

You can also assign to variables:
```
var breakfast = "bagels";
print breakfast; // "bagels".
breakfast = "beignets";
print breakfast; // "beignets".
```

There are also if statements, for loops, and while loops:
```
if (condition) {
    print "yes";
} else {
    print "no";
}

var a = 1;
while (a < 10) {
    print a;
    a = a + 1;
}

for (var a = 1; a < 10; a = a + 1) {
    print a;
}
```

You can also create functions:
```
fun printSum(a,b) {
    print a + b;
}

fun returnSum(a,b) {
    return a + b;
}
```

Lox also supports closures:
```
fun addPair(a,b) {
    return a + b;
}

fun identity(a) {
    return a;
}

print identity(addPair)(1,2); // Prints "3".
```

You can also nest functions:
```
fun returnFunction() {
    var outside = "outside";

    fun inner() {
        print outside;
    }

    return inner;
}

var fn = returnFunction();
fn();
```

Finally, Lox supports classes:
```
class Breakfast {
    cook() {
        print "Eggs a-fryin'!";
    }

    serve(who) {
        print "Enjoy your breakfast, " + who + ".";
    }
}

var breakfast = Breakfast();
print breakfast.cook();
print breakfast.serve("Jimmy John");
```
```
class Breakfast {
    init(meat, bread) {
        this.meat = meat;
        this.bread = bread;
    }

    serve(who) {
        print "Enjoy your " + this.meat + " and " + this.bread + ", " + who + ".";
    }
}

var baconAndToast = Breakfast("bacon","toast");
baconAndToast.serve("Dear Reader");
```

Classes can also inherit other classes:
```
class Breakfast {
    drink() {
        print "Orange Juice!";
    }
}

class Brunch < Breakfast {
    drink() {
        super.drink();
        print "Yummy!";
    }
}
```

Print is built-in as a statement instead of a function due to how the book was structured. Because of this, only clock() remains as a function. Clock() returns the current time in milliseconds so that you can test benchmarks.

And that should be it!
package Main;

class BreakLoop extends RuntimeException {
    BreakLoop(){
        super(null, null, false, false);
    }
}

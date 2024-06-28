interface CanFly {
    void fly();
}

interface CanSwim {
    void swim();
}

class Butterfly implements CanFly {
    public void fly() {
        System.out.println("The butterfly flies.");
    }
}

class Dolphin implements CanSwim {
    public void swim()  {
        System.out.println("The dolphin swims.");
    }
}

class Duck implements CanFly, CanSwim {
    public void fly() {
        System.out.println("The duck flies.");
    }
    public void swim() {
        System.out.println("The duck swims.");
    }
}

class Main {
    public static void main(String[] args) {
        var butterfly = new Butterfly();
        butterfly.fly();

        var dolphin = new Dolphin();
        dolphin.swim();

        var duck = new Duck();
        duck.fly();
        duck.swim();
    }
}

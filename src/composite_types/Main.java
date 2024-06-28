class Point {
    double x;
    double y;
    Point(double x, double y) {
        this.x = x;
        this.y = y;
    }
}

class Main {
    public static void main(String[] args) {
        final var p = new Point(1.0, 2.0);
        System.out.println(p.x);
        System.out.println(p.y);
    }
}

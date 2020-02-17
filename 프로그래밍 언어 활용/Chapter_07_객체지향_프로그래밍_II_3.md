# Chapter_07_객체지향_프로그래밍_II

## 6 추상클래스(abstract class)

### 6.1 추상클래스란?
```java
public class Car {

    void run() {}
}
```
```java
public class Bus extends Car {

    void run() {
        System.out.println("버스가 달리다.");
    }
}
```
```java
public class Taxi extends Car {

    void run() {
        System.out.println("택시가 달리다.");
    }
}
```
```java
public class Main {

    public static void main(String[] args) {
        
        Car car = new Bus();
        car.run();
        
        car = new Taxi();
        car.run();
    }
}
```

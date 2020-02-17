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

## 7 인터페이스
### 7.1 인터페이스란?
```java
public interface Car {

    void run();
}
```
```java
public interface Drone {

    void fly();
}
```
```java
public class Bus implements Car, Drone {

    @Override
    public void fly() {
        System.out.println("버스가 날다.");       
    }

    @Override
    public void run() {
        System.out.println("버스가 달리다.");        
    }
}
```
```java
public class Main {

    public static void main(String[] args) {
        
        Car car = new Bus();
        car.run();
        
        Drone drone = new Bus();
        drone.fly();
    }
}
```

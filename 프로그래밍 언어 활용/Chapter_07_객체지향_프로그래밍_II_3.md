# Chapter_07_객체지향_프로그래밍_II

## 6 추상클래스(abstract class)

### 6.1 추상클래스란? [p.375]
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
* 완성되지 못한 클래스?
  - 빈메서드로는 존재의 의미가 없기 때문
* 상속을 강제하는 클래스?
  - 빈메서드를 만든 목적이 오버라이딩이기 때문에 목적을 무조건 달성해야함.

### 6.2 추상메서드(abstract method)
```java
abstract 리턴타입 메서드이름();
```
### 6.3 추상클래스의 작성 [p.377]
* before
```java
public class Car {

    void run() {}
}
```
* after
```java
public abstract class Car {

    abstract void run();
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

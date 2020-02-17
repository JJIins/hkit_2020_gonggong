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

### 7.1 인터페이스란? [p.381]
* 오직 추상메서드와 상수만을 멤버로 가질 수 있음.

### 7.2 인터페이스의 작성 [p.381]
* 모든 멤버변수는 public static final 이어야 하며, 이를 생략할 수 있다.
  - 생략해도 컴파일러가 자동으로 다시 static final을 붙여 준다.
* 모든 메서드는 public abstract이어야 하며, 이를 생략할 수 있다.
  - 생략해도 컴파일러가 자동으로 abstract를 붙여 준다.
* [참고] JDK_1.8에서 default 메서드와 static 메서드 추가

### 7.3 인터페이스의 상속 [p.382]
* 생략...
  - 인터페이스를 상속해서 쓰는 경우가 드뭄.

### 인터페이스의 구현 [p.382]
```java
public interface Car {

    void run();
}
```
```java
public class Bus implements Car {

    void run() {
        System.out.println("버스가 달리다.");
    }
}
```
```java
public class Taxi implements Car {

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

### 7.5 인터페이스를 이용한 다중상속


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

### 7.6 인터페이스를 이용한 다형성
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

### 7.7 인터페이스의 장점

```
- 개발시간을 단축시킬 수 있다.
- 표준화가 가능하다.
- 서로 관계없는 클래스들에게 관계를 맺어 줄 수 있다.
- 독립적인 프로그래밍이 가능하다.
```

```java
public class VideoDriver {

    void displayText(String output) {
        System.out.println("출력 : " + output);
    }
}
```
```java
public class NvidiaVideoDriver extends VideoDriver {

    @Override
    public void displayText(String output) {
        System.out.println("NVIDIA 출력 : " + output);        
    }

}
```
```java
public class AmdVideoDriver extends VideoDriver {

    @Override
    public void displayText(String output) {
        System.out.println("AMD 출력 : " + output);        
    }
}
```
```java
public class Main {

    public static void main(String[] args) {
        
        VideoDriver vd = new AmdVideoDriver();
        vd.displayText("Hello World");
    }
}
```

### 연습문제
* 위의 VideoDriver 클래스를 인터페이스로 변경하세요.

### 7.8 인터페이스의 이해
```
- 클래스를 사용하는 쪽과 클래스를 제공하는 쪽이 있다.
- 메서드를 사용(호출)하는 쪽에서 사용하려는 메서드의 선언부만 알면 된다.(내용은 몰라도 된다.)
```
```java
public class Main {

    public static void main(String[] args) {
        
        VideoDriver vd = null;
        vd.displayText("Hello World");
    }
}
```

### 7.9 디폴트 메서드와 static메서드
* JDK_1.8부터 도입됨.


## 8 내부 클래스(inner class)

### 8.1 내부 클래스란?
* 내부 클래스는 클래스 내에서 선언된 클래스이다.
* 내부 클래스의 장점
  - 내부 클래스에서 외부 클래스의 멤버들을 쉽게 접근할 수 있다.
  - 코드의 복잡성을 줄일 수 있다.(캡슐화)
  
### 8.2 내부 클래스의 종류와 특징
* 인스턴스 클래스
  - 외부 클래스의 멤버변수 선언위치에 선언하며, 외부 클래스의 인스턴스 멤버처럼 다루어 진다.
  - 주로 외부 클래스의 인스턴스 멤버들과 관련된 작업에 사용될 목적으로 선언된다.
* 스태틱 클래스
  - 외부 클래스의 멤버변수 선언위치에 선언하며, 외부 클래스의 static 멤버처럼 다루어 진다.
  - 주로 외부 클래스의 static멤버, 특히 static 메서드에서 사용될 목적으로 선언된다.
* 지역 클래스
  - 외부 클래스의 메서드나 초기화 블록 안에 선언하며, 선언된 영역 내부에서만 사용될 수 있다.
* 익명 클래스
  - 클래스의 선언과 객체의 생성을 동시에 하는 이름 없는 클래스(일회용)
  
### 8.3 내부 클래스 선언
* 멤버 변수 선언부와 같이 사용됨
```java
public class Outer {

    static class StaticInner {}
    class InstanceInner {}
    
    void method() {
        class LocalInner {}        
    }
}
```

### 8.4 내부 클래스의 제어자와 접근성
* 멤버변수와 똑같은 외부 접근자 범위를 가짐

### 8.5 익명 클래스(anonymous class)
* 상속을 생략하고도 재정의(overriding)해서 사용할 수 있음.
```java
public class Car {
    void run() {
        System.out.println("달리다.");
    }
}
```
```java
public class Main {

    public static void main(String[] args) {
        
        Car car = new Car();
        car.run();
        
        Car car2 = new Car() {
            
            @Override
            public void run() {                
                System.out.println("버스가 달리다.");
            }
        };
        
        car2.run();
    }
}
```

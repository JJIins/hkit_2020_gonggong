## 4 제어자(modifier)

### 4.1 제어자란? [p.344]
* 접근 제어자 : public, protected, drfault, private
* 그외 : static, final , abstract, native, transient, synchronized, volatile, strictfp

### 4.2 static - 클래스의, 공통적인 [p.344]

### 4.3 final - 마지막의, 변경될 수 없는 [p.345]
* final
  - 클래스
    - 상속 불가    
    - 상속 계층 구조에서 '마지막' 클래스입니다.
  - 메서드
    - 오버라이딩 불가
  - 멤버변수, 지역변수
    - 변수값 변경 불가
    - p.30쪽에서 설명함
    
    
### 4.4 abstract - 추상의, 미완성의 [p.347]
* 추상화 : 실제 기능 부분의 구체적인 구현을 추상화해서 표현
* p.375에서 설명...

### 4.5 접근 제어자(access modifier) [p.348]
* 접근 제어자 종류
  - private : 같은 클래스 내에서만 접근이 가능
  - default : 같은 패키지 내에서만 접근이 가능
  - protected 
    - 같은 패키지 내에서
    - 다른 패키지의 자손 클래스에서 접근이 가능
  - public : 접근 제한이 없음
* public > protected > default > private
* 접근 제어자 대상
  - 클래스 
    - public, (default)
  - 메서드, 멤버변수
    - public, protected, (default), private
  - 지역변수
    - 없음
* 접근 제어자를 사용하는 이유
  - 외부로부터 데이터를 보호하기 위해서
  - 외부에서 불필요한, 내부적으로만 사용되는, 부분을 감추기 위해서

### 연습문제
* Car와 Bus 클래스를 구현하세요. 
  - 단 Bus는 Car를 상속해야 한다.
  - Ch7Ex5는 kr.hkit.ch7패키지로, 
  - Car는 kr.hkit.ch7.parent로, 
  - bus는 kr.hkit.ch7.model 패키지로 생성하고, 
  - Ch7Ex5에서 Bus 클래스를 사용할 수 있도록 import 하세요.
```java
package kr.hkit.ch7;

public class Ch7Ex6 {

    public static void main(String[] args) {

        Bus bus = new Bus();
        bus.run();
        bus.ppangppang();
    }
}
```
```console
달리다.
버스가 달리다.
빵빵~.
```

* 생성자의 접근 제어자
  * 싱글톤 패턴
  ```java
  public class Device {

      private static Device instance;

      private Device() {

      }

      public static Device getInstance() {
          if(instance == null) {
              instance = new Device();
          }
          return instance;
      }
  }  
  ```
### 4.6 제어자(modifier)의 조합
* 대상에 따라 사용할 수 있는 제어자
  - 클래스 
    - public, (default)
    - final, abstract
  - 메서드
    - 모든 접근 제어자
    - final, abstract, static
  - 멤버변수
    - 모든 접근 제어자
    - final, static
  - 지역변수
    - final
    
## 5 다형성

### 5.1 다형성이란? [p.354]
* 멤버변수의 다형성??
```java
public class Car {

    int speed = 10;
}
```
```java
public class Bus extends Car {

    int speed = 20;
}
```
```java
public class Main {

    public static void main(String[] args) {
        Car car = new Car();
        System.out.println(car.speed);
        
        Bus bus = new Bus();
        System.out.println(bus.speed);
        
        Car car2 = new Bus();
        System.out.println(car2.speed);       
    }
}
```
```console
10
20
10
```
* 메서드의 다형성
```java
public class Car {

    void run() {
        System.out.println("달리다.");
    }
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
public class Main {

    public static void main(String[] args) {
        Car car = new Car();
        car.run();
        
        Bus bus = new Bus();
        bus.run();
        
        Car car2 = new Bus();
        car2.run();       
    }
}
```
```console
달리다.
버스가 달리다.
버스가 달리다.
```

### 5.2 참조변수의 형변환 [p.356]
* 자손타입 -> 조상타입(Up-casting)
     - 형변환 생략가능
* 자손타입 <- 조상타입(Down-casting)
  - 형변환 생략불가
  
### 5.3 instanceof 연산자 [p.362]
* 참조변수(객체)의 타입을 알아내는 명령어

### 5.4 참조변수와 인스턴스의 연결 [p.364]
* 멤버변수의 경우 참조변수의 타입에 따라 달라진다.
  - 5.1의 멤버변수 다형성?? 예제가 여기에 해당함...

### 5.5 매개변수의 다형성 [p.367]
* 참조변수의 다형성은 메서드의 매개변수에도 적용된다.(당연한 소리)

### 5.6 여러 종류의 객체를 배열로 다루기 [p.370]
```java
public class Product {

}
```
```java
public class TV extends Product {

}
```
```java
public class PC extends Product {

}
```
```java
public class Audio extends Product {

}
```
```java
public class Main {

    public static void main(String[] args) {
                
        TV tv = new TV();
        PC pc = new PC();
        Audio audio = new Audio();
        
        Product[] products = {tv, pc, audio};
    }
}
```
### 연습문제
* 다음 예제 실행할 수 있는 Car, Bus, Taxi, Truck 클래스를 구현하세요.
```java
public class Main {

    public static void main(String[] args) {
                
        Bus bus = new Bus();
        Taxi taxi = new Taxi();
        Truck truck = new Truck();
        
        Car[] cars = {bus, taxi, truck};
    }
}
```
```

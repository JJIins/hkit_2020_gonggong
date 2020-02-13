# Chapter_07_객체지향_프로그래밍_II

## 1 상속

### 1.1 상속의 정의와 장점 [p.310]

* 코드의 재사용성을 높이고 코드의 중복을 제거하여 프로그램의 생산성과 유지보수에 크게 기여한다.
* 상속 클래스
  - 조상 클래스
    - 부모(parent)클래스, 상위(super)클래스, 기반(base)클래스
  - 자손 클래스
    - 자식(child)클래스, 하위(sub)클래스, 파생된(derived)클래스
* 멤버변수 상속
```java
 public class Animal {    
        
    int weight;
}
```
```java
 public class Mammal extends Animal {
    
    int toothSize;
}
```
```java
 public class Dog extends Mammal {

}
```
```java
 public class Main {

    public static void main(String[] args) {
        Dog dog = new Dog();
        dog.weight = 10;
        dog.toothSize = 20;
    }
}
```
* 메서드 상속
```java
public class Animal {    
        
    void eat() {
        System.out.println("음식 먹기");
    }
}
```
```java
public class Mammal extends Animal {    
    
}
```
```java
public class Main {

    public static void main(String[] args) {
        Mammal mammal = new Mammal();
        mammal.eat();
    }
}
```
```java
public class Main {

    public static void main(String[] args) {
        Mammal mammal = new Mammal();
        mammal.eat();
    }
}
```
* 생성자와 초기화 블럭은 상속되지 않는다. 멤버만 상속된다.
* 자손 클래스의 멤버 개수는 조상 클래스보다 항상 같거나 많다.
* 생성자 상속
```java
public class Animal {    

  Animal() {
        System.out.println("Animal Init");
    }
}
```
```java
public class Mammal extends Animal {    
    
}
```
```java
public class Animal {    
        
    int weight;
    
    Animal() {
        System.out.println("Animal Init");
    }
}
```
### 1.2 클래스간의 관계 - 포함관계
```java
public class Point {
    int x;
    int y;
}
```
* 상속관계(is a)
  - Circle is a Point
```java
public class Circle extends Point {    
    int r;
}
```
* 포함관계
  - Circle has a Point
```java
public class Circle {
    Point p;
    int r;
}
```

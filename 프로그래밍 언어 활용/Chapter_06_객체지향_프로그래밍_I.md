# Chapter 06 객체지향 프로그래밍 I

## 3 변수와 메서드

### 3.8 기본형 매개변수와 참조형 매개변수 [p.264]

* 기본형 매개변수(call by value)
  - Animal.java
  ```java
  public class Animal {
      int weight;
  }
  ```
  - Main.java
  ```java
  public class Main {

      public static void diet(int arg) {
          arg = arg / 2;
      }

      public static void main(String[] args) {
          Animal dog = new Animal();        
          dog.weight = 10;
          diet(dog.weight);
          System.out.println(dog.weight);
      }
  }
  ```
  - 실행결과
  ```console
  10
  ```
* 참조형 매개변수(call by reference)
  - Animal.java
  ```java
  public class Animal {
      int weight;
  }
  ```
  - Main.java
  ```java
  public class Main {

      public static void diet(Animal arg) {
          arg.weight = arg.weight / 2;
      }

      public static void main(String[] args) {
          Animal dog = new Animal();        
          dog.weight = 10;
          diet(dog);
          System.out.println(dog.weight);
      }
  }
  ```
  - 실행결과
  ```console
  5
  ```
* 배열 매개변수(call by reference)
  - Animal.java
  ```java
  public class Animal {
      int weight;
  }
  ```
  - Main.java
  ```java
  public class Main {

      public static void diet(int[] arg) {
          arg[0] = arg[0] / 2;
      }

      public static void main(String[] args) {
          int[] dog = new int[1];        
          dog[0] = 10;
          diet(dog);
          System.out.println(dog[0]);
      }
  }
  ```
  - 실행결과 
  ```console
  5
  ```

* [연습문제 6-11] 아래 주석 위치에 알맞은 메서드를 채워 넣으시오.
  - ReferenceParamEx2.java
  ```java
  class ReferenceParamEx2 {
    public static void main(String[] args) 
    {
      int[] x = {10};  // 크기가 1인 배열. x[0] = 10;
      System.out.println("main() : x = " + x[0]);

      change(x);
      System.out.println("After change(x)");
      System.out.println("main() : x = " + x[0]);
    }

    /*
      change 메서드를 구현하시오.
    */
  }
  ```
  - 실행결과
  ```console
  main() : x = 10
  change() : x = 1000
  After change(x)
  main() : x = 1000
  ```
* [연습문제 6-12] 아래 주석 위치에 알맞은 메서드를 채워 넣으시오.
  ```java
  class ReferenceParamEx3 {
    public static void main(String[] args) 
    {
      int[] arr = new int[] {3,2,1,6,5,4};

      printArr(arr);  // 배열의 모든 요소를 출력
      sortArr(arr);   // 배열을 정렬
      printArr(arr);  // 정렬후 결과를 출력
      System.out.println("sum="+sumArr(arr)); // 배열의 총합을 출력
    }

    /*
      printArr 메서드를 구현하시오.
    */

    /*
      sumArr 메서드를 구현하시오.
    */

    static void sortArr(int[] arr) {  // 배열을 오름차순으로 정렬
      for(int i=0;i<arr.length-1;i++)
        for(int j=0;j<arr.length-1-i;j++)
          if(arr[j] > arr[j+1]) {
            int tmp = arr[j];
            arr[j] = arr[j+1];
            arr[j+1] = tmp;
          }
    } // sortArr(int[] arr)
  }
  ```
  - 실행결과
  ```console
  [3,2,1,6,5,4,]
  [1,2,3,4,5,6,]
  sum=21
  ```
* [예제 6-13] 
  - ReturnTest.java
  ```java
  class ReturnTest {
    public static void main(String[] args) {
      ReturnTest r = new ReturnTest();

      int result = r.add(3,5);
      System.out.println(result);

      int[] result2 = {0}; // 배열을 생성하고 result2[0]의 값을 0으로 초기화
      r.add(3,5,result2);  // 배열을 add메서드의 매개변수로 전달
      System.out.println(result2[0]);
    }

    int add(int a, int b) {
      return a + b;
    }

    void add(int a, int b, int[] result) {
      result[0] = a + b;  // 매개변수로 넘겨받은 배열에 연산결과를 저장
    }
  }
  ```
  - 실행결과
  ```console
  8
  8
  ```
### 3.9 참조형 반환타입 [p.268]
* 참조형 반환타입
  - Animal.java
  ```java
  public class Animal {
      int weight;
  }
  ```
  - Main.java
  ```java
    public class Main {

        public static Animal copy(Animal arg) {
            Animal copyDog = new Animal();
            copyDog.weight = arg.weight;
            return copyDog;
        }

        public static void main(String[] args) {
            Animal dog = new Animal();        
            dog.weight = 10;
            Animal copyDog = copy(dog);
            System.out.println(copyDog.weight);
        }
    }
  ```
* [연습문제 6-14] 아래 주석 위치에 알맞은 메서드를 채워 넣으시오.
  - Data.java
  ```java
  public class Data {
      int x; 
  }
  ```
  - ReferenceReturnEx.java
  ```java
  public class ReferenceReturnEx {
      public static void main(String[] args) 
      {
          Data d = new Data();
          d.x = 10;

          Data d2 = copy(d); 
          System.out.println("d.x ="+d.x);
          System.out.println("d2.x="+d2.x);
      }

    /*
      copy 메서드를 구현하시오.
    */
  }
  ```
  - 실행결과
  ```console
  d.x =10;
  d2.x=10;
  ```
### 3.10 재귀호출(recursive call) [p.270]
* 재귀호출1
```java
public class Main {

    public static void func() {
        System.out.println("hello");
        func();
    }

    public static void main(String[] args) {
        func();
    }
}
```
* 재귀호출2
```java
public class Main {

    public static void func(int a) {
        a--;
        System.out.println("hello");
        
        if(a > 0) {
            func(a);    
        }        
    }

    public static void main(String[] args) {
        func(10);
    }
}
```
* [연습문제] 반복문 대신 재귀호출을 이용해서 다음을 출력하시오.
  - Main.java
  ```java
  public class Main {

      public static void func(int a) {
        /*
          구현할 
        */
      }

      public static void main(String[] args) {
          func(10);
      }
  }
  ```
  - 실행결과
  ```console
  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  ```
* 팩토리얼(Factorial)
  - ex) 5! = 5 * 4 * 3 * 2 * 1 = 120
  - 수학함수로 표현
    - f(n) = n * f(n-1)
    - 단, f(1) = 1
  - Main.java
  ```java
  public class Main {

      public static int f(int n) {
          if(n == 1) {
              return 1;
          } else {
              return n * f(n - 1);
          }
      }

      public static void main(String[] args) {
          int result = f(5);
          System.out.println(result);
      }
  }
  ```
  - 실행결과
  ```console
  120
  ```
### 3.11 클래스 메서드(static메서드)와 인스턴스 메서드 [p.277]
* 클래스 메서드(static메서드)와 인스턴스 메서드
  - Animal.java
  ```java
  public class Animal {

      static void func1() {        
      }

      void func2() {        
      }    
  }
  ```
  - Main.java
  ```java
  public class Main {

      public static void main(String[] args) {
          Animal.func1();  // 클래스의 메서드

          Animal animal = new Animal();
          animal.func2();  // 인스턴스의 메서드
      }
  }
  ```
* [연습문제 6-19] 아래 주석 위치에 알맞은 메서드를 채워 넣으시오.
  - MyMath2.java
  ```java
  public class MyMath2 {
    long a, b;

    // 인스턴스변수 a, b만을 이용해서 작업하므로 매개변수가 필요없다.
    long add() 	    { return a + b; }  // a, b는 인스턴스변수
    long subtract() { return a - b; }
    long multiply() { return a * b; }
    /*
      divide 메서드를 구현하시오.
    */

    // 인스턴스변수와 관계없이 매개변수만으로 작업이 가능하다.
    static long   add(long a, long b) 	   	 { return a + b; } // a, b는 지역변수
    static long   subtract(long a, long b)   { return a - b; }
    static long   multiply(long a, long b)	 { return a * b; }
    /*
      divide 메서드를 구현하시오.
    */
  }
  ```
  - MyMathTest2.java
  ```java
  class MyMathTest2 {
    public static void main(String args[]) {
      // 클래스메서드 호출. 인스턴스 생성없이 호출가능
      System.out.println(MyMath2.add(200L, 100L));
      System.out.println(MyMath2.subtract(200L, 100L));
      System.out.println(MyMath2.multiply(200L, 100L));
      System.out.println(MyMath2.divide(200.0, 100.0));

      MyMath2 mm = new MyMath2(); // 인스턴스를 생성
      mm.a = 200L;
      mm.b = 100L;
      // 인스턴스메서드는 객체생성 후에만 호출이 가능함.
      System.out.println(mm.add());
      System.out.println(mm.subtract());
      System.out.println(mm.multiply());
      System.out.println(mm.divide());
    }
  }
  ```
  - 실행결과
  ```console
  300
  100
  20000
  2.0
  300
  100
  20000
  2.0
  ```

### 3.12 클래스 멤버와 인스턴스 멤버간의 참조와 호출 [p.280]
* 클래스 메서드와 인스턴스 메서드 간의 호출
  - Animal.java
  ```java
  public class Animal {

      static void func1() {        
      }

      void func2() {        
      }

      static void func3() {
          func1();
          // func2(); // 에러 발생
      }

      void func4() {
          func1();
          func2();
      }
  }
  ```
* 클래스 변수와 인스턴스 변수 간의 참조
  - Animal.java
  ```java
  public class Animal {

      static int a;
      int b;

      static void func1() {
          a = 10;
          // b = 20; // 에러 발생
      }

      void func2() {        
          a = 10;
          b = 20;
      }
  }
  ```
  * 알아두면 좋아요! [p.282]
  ```java
  public class Animal {

    int func() {
        return 0;
    }
  }
  ```
  ```java
  public class Main {
      public static void main(String args[]) {
          Animal animal = new Animal();
          int result = animal.func();

          //int result = new Animal().func();
      }
  }
  ```

## 4 오버로딩(overloading)

### 4.1 오버로딩이란? [p.283]
```java
public class Animal {    
    
    void func() {        
    }
    
    void func(int a) {        
    }
    
    void func(int a, int b) {        
    }    
}
```

### 4.2 오버로딩의 조건 [p.283]
* 메서드 이름이 같아야 한다.
* 매개변수의 개수 또는 타입이 달라야 한다.

### 4.3 오버로딩의 예 [p.283]
* println 

### 4.4 오버로딩의 장점 [p.285]
* 메서드를 작성하는 쪽에서는 이름을 짓기도 어렵고, 
* 메서드를 사용하는 쪽에서는 임을 일일이 구분해서 기억해야하기 때문에 서로 부담이 된다.

### 4.5 가변인자(varargs)와 오버로딩
* 가변인자
```java
public class Main {
    
    public static void func(String... str) {
        System.out.println(str[0]);
        System.out.println(str[1]);
    }
    
    public static void main(String args[]) {
        func("test1", "test2");
   }
}
```
* [연습문제] 아래의 sum을 오버로딩 메서드에서 가변인자 메서드로 바꿔 보시오.
  - Main.java
  ```java
  public class Main {

      public static void sum(int a, int b) {
          System.out.println(a + b);        
      }

      public static void sum(int a, int b, int c) {
          System.out.println(a + b + c);        
      }

      public static void main(String args[]) {
          sum(1, 2);
          sum(1, 2, 3);
     }
  }
  ```
  - 실행결과
  ```console
  3
  6
  ```

## 5 생성자

### 5.1 생성자란? [p.291]
* 생성자 조건
  - 생성자의 이름은 클래스의 이름과 같아야 한다.
  - 생성자는 리턴 값이 없다.
* 생성자 정의 방법

### 5.2 기본 생성자(default constructor) [p.292]
```java
public class Animal {
    
    Animal() {        
    }
}
```

### 5.3 매개변수가 있는 생성자 [p.294]
```java
public class Animal {
    
    Animal() {        
    }
    
    Animal(int a) {        
    }
    
    Animal(int a, int b) {        
    }
}
```
* 생성자 호출 방법
```java
public class Main {

    public static void main(String[] args) {

        Animal animal = new Animal();
        Animal animal = new Animal(1);
        Animal animal = new Animal(1, 2);
    }
}
```
* [연습문제 6-24] 주석 부분에 생성자 코드를 추가해서 실행결과를 만드시오.
  - Car.java
  ```java
  class Car {
      String color;        // 색상
      String gearType;    // 변속기 종류 - auto(자동), manual(수동)
      int door;            // 문의 개수

      Car() {}

      /*
         매개변수가 있는 생성자 코드를 구현하세요.
      */     
  }
  ```
  - CarTest.java
  ```java
  class CarTest {
      public static void main(String[] args) {
          Car c1 = new Car();
          c1.color = "white";
          c1.gearType = "auto";
          c1.door = 4;

          Car c2 = new Car("white", "auto", 4);

          System.out.println("c1의 color=" + c1.color + ", gearType=" + c1.gearType+ ", door="+c1.door);
          System.out.println("c2의 color=" + c2.color + ", gearType=" + c2.gearType+ ", door="+c2.door);
      }
  }
  ```
  - 실행결과
  ```console
  c1의 color=white, gearType=auto, door=4
  c2의 color=white, gearType=auto, door=4
  ```
### 5.4 생성자에서 다른 생성자 호출하기 - this(), this [p295]
* 생성자에서 다른 생성자를 호출하기 위한 조건
  - 생성자의 이름으로 클래스 이름 대신 this를 사용한다.
  - 한 생성자에서 다른 생성자를 호출할 때는 반드시 첫 줄에서만 호출이 가능하다.
* this()
  ```java
  public class Animal {    

      Animal() {
          System.out.println("hello1");
      }

      Animal(int a) {
          this();
          System.out.println("hello2");
     }
  }
  ```
  ```java
  public class Main {
      public static void main(String[] args) {

          Animal animal1 = new Animal();
          Animal animal2 = new Animal(1);
      }
  }
  ```
* this
```java
public class Animal {    
    
    int a;
    
    void func(int a) {
        this.a = a;
    }
}
```

## 6 변수의 초기화

### 6.1 변수의 초기화 [p.300]
* 멤버변수(클래스변수와 인스턴스변수)와 배열의 초기화는 선택적이지만, 지역변수의 초기화는 필수적이다.

### 6.2 명시적 초기화(explicit initialization) [p.301]
* 명시적 초기화
```java
public class Animal {    
        
    static int a = 10;
    int b = 20;
}
```
* 명시적 초기화가 간단하고 명료하긴 하지만, 보다 복잡한 초기화 작업이 필요할 때는 생성자 또는 
초기화 블럭(initialization block)을 사용

### 6.3 초기화 블럭(initialization block) [p.302]
* 클래스 초기화 블럭
```java
public class Animal {    
        
    static int a;    
    
    static {
        a = 10;
    }
}
```
* 인스턴스 초기화 블럭
```java
public class Animal {    
        
    int a;    
    
    {
        a = 10;
    }
}
```
### 6.4 멤버변수의 초기화 시기와 순서 [p.300]
* 멤버변수의 초기화 시점
  - 클래스 변수
    - 클래스가 처음 로딩될 때 단 한번 초기화 된다.
  - 인스턴스 변수
    - 인스턴스가 생성될 때마다 각 인스턴스별로 초기화가 이루어 지다.
* 멤버변수의 초기화 순서
  - 클래스 변수
    - 기본값 -> 명시적초기화 -> 클래스 초기화 블럭
    - 기본값 -> 명시적초기화 -> 인스턴스 초기화 블럭 -> 생성자
    

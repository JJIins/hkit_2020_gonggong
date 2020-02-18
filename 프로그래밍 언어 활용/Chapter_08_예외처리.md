# Chapter 06 예외처리
## 1 예외처리(exeption handing)
```java
public class Main {
    
    public static void main(String[] args) {     
        login();
    }
    
    public static void login() {
        Scanner scan = new Scanner(System.in);
        
        System.out.print("ID 입력 : ");
        String id = scan.nextLine();
        
        int error = checkId(id);
        
        if(error == 1) {
            scan.close();
            return;
        }
        
        System.out.println("정상적으로 가입되었습니다.");        
        scan.close();
    }
    
    public static int checkId(String id) {
        if(id.length() < 5) {
            return 1;        
        }
        return 0;
    }
}
```
### 연습문제
* 앞에 예제를 수정하여 ID와 PW를 입력받으면 가입되는 프로그램을 완성하세요. 단, ID는 5자이상, PW는 10자 이상만 가입이 가능합니다.
<!--
```java
public class Main {
    
    public static void main(String[] args) {     
        login();
    }
    
    public static void login() {
        Scanner scan = new Scanner(System.in);
        
        System.out.print("ID 입력 : ");
        String id = scan.nextLine();
        System.out.print("PW 입력 : ");
        String pw = scan.nextLine();
        
        int error = checkId(id);
        
        if(error == 1) {
            scan.close();
            return;
        }
        
        error = checkPw(pw);
        
        if(error == 1) {
            scan.close();
            return;
        }
        
        System.out.println("정상적으로 가입되었습니다.");        
        scan.close();
    }
    
    public static int checkId(String id) {
        if(id.length() < 5) {
            return 1;        
        }
        return 0;
    }
    
    public static int checkPw(String id) {
        if(id.length() < 4) {
            return 1;        
        }
        return 0;
    }
}
```
-->
```console
ID 입력 : abcde
PW 입력 : 12345
정상적으로 가입되었습니다.
```

### 1.1 프로그램 오류

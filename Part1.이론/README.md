# FastCampus

## Part 1. 이론

<hr/>

```swift
let num: Int = 100 // 상수
var name: String = "Kim" // 변수
var number = 10 // 타입 추론
```

<hr/>

### 기본 데이터 타입
* Int: 64bit 정수형
* UInt: 부호가 없는 64bit 정수형
* Float: 32bit 부동 소수점
* Double: 64bit 부동 소수점
* Bool: true, false 값
* Character: 문자
* String: 문자열
* Any: 모든 타입을 지칭하는 키워드

<hr/>

### 컬렉션 타입
* Array: 같은 데이터 타입의 값들을 순서대로 저장하는 리스트
* Dictionary: key-value로 순서없이 저장
* Set: 같은 데이터 타입의 값을 순서없이 저장하며 중복을 허용하지 않는다.

<hr/>

```swift
var numbers: Array<Int> = Array<Int>()
// var numbers = [String]();
// var numbers: [String] = [];

numbers.append(1)
numbers.insert(3, at: 0)
numbers.remove(at: 0)
```

<hr/>

```swift
var dic: Dictionary<String, Int> = Dictionary<String, Int>()
// var dic: [String: Int] = ["hello":1];
// var dic = ["hello":1];
dic["hello"] = 10
dic.removeValue(forKey: "hello")
```

<hr/>

```swift
var set: Set = Set<Int>()
set.insert(10)
set.insert(20)
set.insert(20)
set.insert(50)
set.remove(10)
```

<hr/>

### 함수
```swift
func functionName(parameterName: dataType) -> returnType{
    return returnValue 

func sum(a: Int, b: Int) -> Int{
    return a+b
}

func hello() -> String{
    return "Hello"
}

func printHelloWolrd(){
    print("HelloWolrd")
}

// 전달 인자 파라미터
func sendMsg(from myName: String, to name: String) -> String{
    return "Hello \(name) ! I'm \(myName)"
}

// 가변 인자 파라미터
func sendMsg2(_ name: String) -> String{
    return "Hello \(name)"
}

// 가변 인자 파라미터
func sendMsg3(me: String, friends: String...) -> String{
    return "Hello \(friends) ! I'm \(me)"
}
```

<hr/>

### 조건문

* if - else if - else
```swift
if condition1 {
    statement1
} else if condition2 {
    statement2
} else {
    statement3
}
```

* switch
```swift
switch 비교대상{
    case pattern1:
        statement1
    case pattern2, pattern3:
        statement2
    default:
        statement3
}
```

```swift   
let temperature = 30

switch temperature{
    case -20...9:
        print("겨울")
    case 10...14:
        print("가을")
    case 15...20:
        print("봄")
    case 20...35:
        print("여름")
    default:
        print("이상")
}
```

<hr/>

### 반복문

* for -  in
```swift
for loopConstant in range{
    statement
}
```

```swift
for i in 1...5{
    print(i)
}

for j in [1,2,3,4,5]{
    print(j)
}

let arr = [1,2,3,4,5]
for k in arr{
    print(k)
}
```

* while
```swift
var num = 5
while num < 10{
    num += 1
}
```

* repeat - while
```swift
repeat {
    statement
} while cond
```

```swift
var x = 4

repeat{
    x += 2
} while x < 3
```
<hr/>


### 옵셔널

* 옵셔널은 값이 있을수도 없을수도 있는 경우
```swift
var number: Int? = nil

var optionalName: String? = "KIM"
var requiredName: String = optionalName // error
```

옵셔널로 선언된 변수에 저장된 값을 옵셔널이 아닌 변수에 저장할 수 없다.
이 경우 옵셔널 바인딩을 사용해야 한다.

<hr/>

### 옵셔널 바인딩
* 명시적 해제
    * 강제 해제
    * 비강제 해제(옵셔널 바인딩)
* 묵시적 해제
    * 컴파일러에 의한 자동 해제
    * 옵셔널의 묵시적 해제

```swift
// 강제 해제 -> ! 사용
var number: Int? = 3

print(number)
print(number!)
```

```swift
// 비강제 해제(옵셔널 바인딩)
var number: Int? = 3

print(number)
print(number!)

// if - else를 사용한 옵셔널 바인딩
if let result = number{
    print(result)
} else{
    
}

// guard를 사용한 옵셔널 바인딩
func optinalBindingExample(){
    var number: Int? = 3
    guard let result = number else { return }
    print(result)
}

optinalBindingExample()
```

```swift
// 컴파일러에 의한 자동 해제
let value: Int? = 6

if value == 6{
    print("value가 6입니다.")
} else{
    print("value는 6이 아닙니다.")
}
```

```swift
// 옵셔널의 묵시적 해제
let numberStr = "12"

var strToInt: Int! = Int(numberStr)

print(strToInt + 1)
```

<hr/>

### 구조체
* 구조체와 클래스는 Pascal 표기법으로 표기

```swift
struct structName {
    // property
    // method
}
```

```swift
struct User{
    var nickname: String
    var age: Int
    
    func getInformation(){
        print(nickname, age)
    }
}

var user = User(nickname: "ironMan", age: 42)
user.getInformation()

user.nickname = "sheHulk"
user.getInformation()
```

<hr/>

### 클래스

```swift
class className{
    // property
    // method
}
```

```swift
class Dog{
    var name: String = ""
    var age: Int = 0
    
    init(){
        
    }
    
    func getInformation(){
        print(name, age)
    }
}

var dog = Dog()
dog.name = "choco"
dog.age = 12
dog.getInformation()

dog.age = 10
dog.getInformation()
```

<hr/>

### 클래스 생성자
* 클래스 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정
* 생성자의 이름을 다르게 해준다면, 여러개의 생성자를 만들 수 있다.


```swift
class User{
    var nickname: String
    var age: Int

    init(nickname: String, age: Int){
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int){
        self.nickname = "sheHulk"
        self.age = age
    }
    
    deinit{
        print("deinit User Class")
    }
    
    func getInformation(){
        print(nickname, age)
    }
}

var firstUser = User(nickname: "ironMan", age: 42)
firstUser.getInformation()

var secondUser = User(age: 42)
secondUser.getInformation()

var thirdUser: User? = User(age: 24)
thirdUser = nil // executed deinit
```

<hr/>

### 프로퍼티

* 저장 프로퍼티

```swift
struct DogStruct{
    var name: String
    let gender: String
}

var dogStruct = DogStruct(name: "Kim", gender: "M")
dogStruct.name = "Park"
dogStruct.gender = "F" // error


let dogStruct2 = DogStruct(name: "Kim", gender: "F")
dogStruct2.name = "Park" // error
```
dogStruct는 var 타입이므로 수정 가능하며, dogStruct.name 또한 var 타입으로 수정이 가능하다. 하지만 dogStruct.gender let 타입으로 수정이 불가능하다.


```swift
class DogClass{
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

let dogClass = DogClass(name: "Kim", gender: "F")
dogClass.name = "Park"
```

dogClass는 let 타입을 갖지만, 구조체와 달리 클래스 내의 var 타입을 갖는 프로퍼티를 수정할 수 있다. 

```
그 이유는 구조체는 변수 타입을 갖기에 let으로 선언된 인스턴스의 프로퍼티는 
수정이 불가능하며, 클래스는 참조 타입을 갖기에 let으로 선언된 인스턴스의
프로퍼티 수정이 가능하기 때문이다.
```

* 연산 프로퍼티

```swift
struct Stock{
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int{
        get{
            return averagePrice * quantity
        }
        set(newPrice){
            averagePrice = newPrice / quantity
        }
//        set{
//            averagePrice = newValue / quantity
//        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
stock.purchasePrice // getter
stock.purchasePrice = 3000 // setter
```

* 프로퍼티 옵저버
```swift
class Account{
    var credit: Int = 0{
        willSet{
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet{
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000
```

* 타입 프로퍼티

인스턴스 생성 없이 객체 내의 프로퍼티에 접근한다.

저장 프로퍼티와 연산 프로퍼티에서만 사용 가능하다.

`static` 키워드를 사용하여 정의한다.

```swift
struct SomeStruct{
    static var storedTypeProperty = "Some value."
    
    static var computedTypeProperty: Int{
        return 1
    }
}

SomeStruct.storedTypeProperty = "Hello"
print(SomeStruct.computedTypeProperty)

```

<hr/>






<!-- ```swift
``` -->
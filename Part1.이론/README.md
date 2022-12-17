# FastCampus - iOS

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

### 클래스와 구조체의 공통점과 차이점

[개인적인 기준으로 가장 정확한 차이점을 알 수 있던 글](https://shark-sea.kr/entry/Swift-%EA%B5%AC%EC%A1%B0%EC%B2%B4%EC%99%80-%ED%81%B4%EB%9E%98%EC%8A%A4-%EC%B0%A8%EC%9D%B4-struct-vs-class)

### 공통점
* 값을 저장할 프로퍼티를 선언할 수 있습니다.
* 함수적 기능을 하는 메서드를 선언할 수 있습니다.
* 내부 값 `.`을 사용하여 접근할 수 있습니다.
* 생성자를 사용해 초기 상태를 설정할 수 있습니다.
* extension을 사용하여 기능을 확장할 수 있습니다.
* Protocol을 채택하여 기능을 설정할 수 있습니다.

### 차이점

* 클래스
    * 참조 타입
    * ARC로 메모리를 관리한다.
    * 상속 가능하다.
    * 타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입을 확인할 수 있다.
    * deinit을 사용하여 클래스 인스턴스의 메모리 할당을 해제할 수 있다.
    * 같은 클래스 인스턴스를 여러 개의 변수에 할당한 뒤 값을 변경시키면 모든 변수에 영향을 줄 수 있다. (메모리가 복사 됨)

* 구조체
    * 값 타입
    * 구조체 변수를 새로운 변수에 할당할 때마다 새로운 구조체가 할당됩니다.
    * 같은 구조체를 여러 개의 변수에 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않는다. (값 자체를 복사한다.)


```swift
class SomeClass{
    var count: Int = 0
}

var someClass1 = SomeClass()
var someClass2 = someClass1
var someClass3 = someClass2

someClass3.count = 2
print(someClass1.count)
```

```swift
struct SomeStruct{
    var count: Int = 0
}

var someStruct1 = SomeStruct()
var someStruct2 = someStruct1
var someStruct3 = someStruct2

someStruct2.count = 3
print(someStruct1.count)
```

<hr/>

### 상속

```swift
class ClassName: ParentClassName{
    // subClass definition
}
```
위와 같은 형태로 클래스를 생성하며, `final`키워드를 사용하여, 상속이 불가한 클래스를 만들거나, 하위 클래스에서 `override`가 불가능한 프로퍼티를 만들 수 있다.



```swift
class Vehichle{
    var currentSpeed = 0.0
//    final var currentSpeed = 0.0
    var description: String{
        return "travelling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise(){
        print("Vehicle Noise")
    }
}


class Bicycle: Vehichle{
    var hasBasket = false
}


let bicycle = Bicycle()
bicycle.currentSpeed = 15
print(bicycle.currentSpeed) // 15.0




class Train: Vehichle{
    
    override func makeNoise() {
        super.makeNoise()
        print("Train Noise")
    }
}

let train = Train()
train.makeNoise()
// Vehicle Noise
// Train Noise



class Car: Vehichle{
    
    var gear = 1
    override var description: String{
        return super.description + "in gear \(gear)"
    }
    
}

let car = Car()
car.currentSpeed = 30
car.gear = 2
print(car.description)
// travelling at 30.0 miles per hourin gear 2


class AutomaticCar: Car{
    
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automaticCar = AutomaticCar()
automaticCar.currentSpeed = 35.0
print(automaticCar.description)
// travelling at 35.0 miles per hourin gear 4
```

<hr/>

### 타입 캐스팅

* 인스턴스의 타입을 확인하거나 어떤 클래스의 인스턴스를 해당 클래스 계층 구조의 슈퍼 클래스나 서브 클래스로 취급하는 방법

* `is`, `as` 키워드를 사용하여 타입 캐스팅

```swift
class MediaItem{
    var name: String
    
    init(name: String){
        self.name = name
    }
}

class Movie: MediaItem{
    var direction: String
    init(name: String, direction: String){
        self.direction = direction
        super.init(name: name)
    }
}

class Song: MediaItem{
    var artist: String
    
    init(name: String, artist: String){
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "스물", direction: "이병헌"),
    Song(name: "Hello", artist: "Adele"),
    Song(name: "It's my life", artist: "Bon Jovi"),
    Movie(name: "헤어질 결심", direction: "박찬욱"),
    Song(name: "Creep", artist: "RadioHead")
]

var movieCount = 0
var songCount = 0

for item in library{
    if item is Movie{
        movieCount += 1 // 2
    } else{
        songCount += 1 // 3
    }
}

for item in library{
    if let movie = item as? Movie{
        print("Movie: \(movie.name), dir. \(movie.direction)")
    } else if let song = item as? Song{
        print("Song: \(song.name), by \(song.artist)")
    }
}
// Movie: 스물, dir. 이병헌
// Song: Hello, by Adele
// Song: It's my life, by Bon Jovi
// Movie: 헤어질 결심, dir. 박찬욱
// Song: Creep, by RadioHead
```

<hr/>

### assert와 guard

* assert
    * 특정 조건을 체크하고, 조건이 성립되지 않으면 메시지를 출력하게 할 수 있는 함수이다.
    * assert 함수는 디버깅 모드에서만 동작하고 주로 디버깅 중 조건의 검증을 위하여 사용합니다.

* guard
    * 무언가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정하는 것이다.
    * guard 문에 주어진 조건문이 거짓일 때 구문이 실행된다.



```swift
var value = 0;
assert(value == 0)

value = 2
assert(value == 0, "0이 아닙니다.")
```

```swift
guard Cond else{
    // if false, execute else-statement
    // return or throw or break
}
```

```swift
func guardTest(value: Int){
    guard value == 0 else { return }
    print("안녕하세요.")
}

guardTest(value: 0) // 안녕하세요.
guardTest(value: 123) //
```

```swift
// guard문을 사용한 옵셔널 바인딩
func guardTest(value: Int?){
    guard let value = value else { return }
    print(value)
}

guardTest(value: 0)
guardTest(value: nil)
```

<hr/>

### 프로토콜

* 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진



```swift
protocol ProtocolName{
    // something
} 
```

```swift
protocol FirstProtocol{
    var name: Int{ get set }
    var age: Int{ get }
}

protocol AnotherProtocol{
    static var someTypeProperty: Int{ get set }
    // 프로토콜에서 타입 프로퍼티를 사용하기 위해서는
    // static 키워드를 사용해야한다.
}

protocol SomeProtocol{
    
}

protocol SomeProtocol2{
    
}

protocol SomeProtocol3{
    func someTypeMethod()
}

protocol SomeProtocol4{
    init(params: Int)
}

protocol SomeProtocol5{
    init()
}

struct SomeStructure: SomeProtocol, SomeProtocol2{
    
}

protocol FullName{
    var fullName: String{ get set }
    func printFullName()
}

struct Person: FullName{
    var fullName: String
    func printFullName() {
        print(fullName)
    }
}

class SomeClass: SomeSuperclass, FirstProtocol, SecondProtocol{
    
}

class SomeClass2: SomeProtocol5{
    required init(){
        
    }
    // 구조체와 달리, 클래스에서는 프로토콜이 요구하는 생성자를 생성하려면
    // required 식별자가 필요하다.

    // 만약 클래스가 상속받을 수 없는 final 생성자라면
    // required 식별자가 필요하지 않다.
}
```

<hr/>

### 익스텐션

* 익스텐션이 타입에 추가할 수 있는 기능
    * 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
    * 타입 메서드 / 인스턴스 메서드
    * 이니셜라이저
    * 서브 스크립트
    * 중첩 타입
    * 특정 프로토콜을 준수할 수 있도록 기능 추가


```swift
extension SomeType{
    // 추가 기능
}
```

```swift
extension Int{
    
    var isEven: Bool{
        return self % 2 == 0
    }
    
    var isOdd: Bool{
        return self % 2 == 1
    }
}

var number = 3
number.isOdd // true
number.isEven // false

// 익스텐션은 연산 프로퍼티는 추가할 수 있지만, 연산 프로퍼티는 추가할 수 없다.
// 타입 옵저버도 추가할 수 없다.

extension String{
    func convertToInt() -> Int?{
        return Int(self)
    }
}

var str = "1"
str.convertToInt() // 1
```

<hr/>

### 열거형

* 연관성이 있는 값을 모아 놓은 것을 말한다.


```swift
enum CompassPoint{
    
    //case north, south
    case north
    case south
    case east
    case west

}

var direction = CompassPoint.east

direction = .west // west

switch direction{
case .north:
    print("north")
case .south:
    print("south")
case .east:
    print("east")
case .west:
    print("west")
}
```

```swift
//  enum 타입에 raw value를 가지도록 할 수 있다.
enum CompassPoint: String{
    
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"

}

var direction = CompassPoint.east

direction = .west // 서

switch direction{
case .north:
    print(direction.rawValue)
case .south:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)
}

var direction2 = CompassPoint(rawValue: "남") // south
```

```swift
// 연관값
enum PhoneError{
    case unknown
    case betteryLow(String)
}

var error = PhoneError.betteryLow("배터리가 곧 방전됩니다.") // 

switch error{
case .betteryLow(let message):
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.")
}
// 배터리가 곧 방전됩니다.
```

<hr/>

### 옵셔널 체이닝

* 옵셔널 체이닝은 옵셔널에 속해 있는 `nil`일 지도 모르는 프로퍼티, 메서드, 서브 스크립션 등을 가져오거나 호출할 때 사용할 수 있는 일련의 과정이다.

```swift
struct Developer{
    let name: String
}

struct Company{
    let name: String
    var developer: Developer?
}

var developer = Developer(name: "Kim")
var company = Company(name: "Cacao", developer: developer)

print(company.developer)

// 옵셔널 체이닝
print(company.developer.name) // error
print(company.developer?.name) // Optional("Kim")
print(company.developer!.name) // Kim -> 강제 언래핑
```

<hr/>

### 에러 처리 (try-catch)

* 프로그램 내에서 에러가 발생한 상황에 대해 대응하고 이를 복구하는 과정

* `Swift`에서는 런타임에 에러가 발생한 경우, 이를 처리하기 위한
    ```
    발생(throwing)
    감지(catching)
    전파(propagation)
    조작(manipulating)
    ```
    을 지원하는 일급 클래스를 지원한다.

```swift
enum PhoneError: Error{
    case unknown
    case batteryLow(batteryLevel: Int)
}

throw PhoneError.batteryLow(batteryLevel: 20)

func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String{
    guard batteryLevel != -1 else {throw PhoneError.unknown}
    guard batteryLevel >= 20 else {
        throw PhoneError.batteryLow(batteryLevel: 20)
    }
    return "배터리 상태가 정상입니다."
}

//do{
//    try 오류 발생 가능 코드
//} catch{
//    처리 코드
//}

do {
    try checkPhoneBatteryStatus(batteryLevel: -1)
} catch PhoneError.unknown{
    print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(batteryLevel: let batteryLevel){
    print("배터리 전원 부족, 남은 배터리 \(batteryLevel)%")
} catch {
    print("그 외 오류 발생: \(error)")
}

do {
    try checkPhoneBatteryStatus(batteryLevel: 15)
} catch PhoneError.unknown{
    print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(batteryLevel: let batteryLevel){
    print("배터리 전원 부족, 남은 배터리 \(batteryLevel)%")
} catch {
    print("그 외 오류 발생: \(error)")
}

do {
    try checkPhoneBatteryStatus(batteryLevel: 25)
} catch PhoneError.unknown{
    print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(batteryLevel: let batteryLevel){
    print("배터리 전원 부족, 남은 배터리 \(batteryLevel)%")
} catch {
    print("그 외 오류 발생: \(error)")
}


let status1 = try? checkPhoneBatteryStatus(batteryLevel: -1)
print(status1) // nil

let status2 = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status2) // Optional("배터리 상태가 정상입니다.")


// try ! 구문은 throwing method가 error를 발생시키지 않을 거라 확신할 수 상황에서 사용
let status3 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status3) // 배터리 상태가 정상입니다.
```
<hr/>

### 클로저

* 클로저는 코드에서 전달 및 사용할 수 있는 독립 기능 블록이며, 일급 객체의 역할을 할 수 있다.

    * 일급 객체란 전달 인자로 보낼 수 있고, 변수/상수 등으로 저장하거나 전달할 수 있으며, 함수의 반환 값이 될 수도 있다.

```swift
{
    (params) -> (retrunType) in // closure head
    statement // closure body
}
```

```swift
let hello = { () -> () in
    print("Hello")
}

hello() // hello
```

<!-- ```swift
``` -->

<!-- ```swift
``` -->



<!-- ```swift
``` -->
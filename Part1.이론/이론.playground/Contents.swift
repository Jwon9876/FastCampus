
// !!! 기록/보관용으로 작성된 것이므로 변수 겹침, 의도적 or 의도적이지 않은 오류 등의 문제가 있습니다. !!!

var numbers: Array<Int> = Array<Int>()

numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[1]

numbers.insert(3, at: 0)
numbers.remove(at: 0)


var names = [String]();
var names2: [String] = [];
var asdasd = ["asdasd", "asdasdasd"]

var asdasdasdasd = ["asd":1];
asdasdasdasd


//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["asd":1];
dic["cho"] = 4
dic

dic["cho"] = 19
dic

dic.removeValue(forKey: "cho")
dic



var set: Set = Set<Int>() // 축약 선언 없음
set.insert(10)
set.insert(20)
set.insert(20)
set.insert(50)

set

set.remove(10)
set

func sum(a: Int, b: Int) -> Int{
    return a+b
}

sum(a: 1, b: 2)


func hello() -> String{
    return "Hello"
}

hello()

// 전달 인자 파라미터
func sendMsg(from myName: String, to name: String) -> String{
    return "Hello \(name) ! I'm \(myName)"
}

sendMsg(from: "cho", to: "choi")


// 가변 인자 파라미터
func sendMsg2(_ name: String) -> String{
    return "Hello \(name)"
}
sendMsg2("asdasdasdasd")

func sendMsg3(me: String, friends: String...) -> String{
    return "Hello \(friends) ! I'm \(me)"
}

sendMsg3(me: "choi", friends: "Jim, Kim")


func printHelloWolrd(){
    print("HelloWolrd")
}


printHelloWolrd()


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

for i in 1...5{
    print(i)
}

print("_________")

for j in [1,2,3,4,5]{
    print(j)
}

print("_________")
let arr = [1,2,3,4,5]
for k in arr{
    print(k)
}


var num = 5
while num < 10{
    num += 1
}
num


var x = 4

repeat{
    x += 2
} while x < 3

x



var name: String?

var nameAAA: String? = "asdasd"

var nameBBB: String = nameAAA

var number: Int? = 3

print(number)
print(number!)


if let result = number{
    print(result)
} else{
    
}


func optinalBindingExample(){
    var number: Int? = 3
    guard let result = number else { return }
    print(result)
}

optinalBindingExample()


let value: Int? = 6

if value == 6{
    print("value가 6입니다.")
} else{
    print("value는 6이 아닙니다.")
}


let numberStr = "12"

var strToInt: Int! = Int(numberStr)

print(strToInt + 1)


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
thirdUser = nil


struct DogStruct{
    var name: String
    let gender: String
}

var dogStruct = DogStruct(name: "Kim", gender: "M")
dogStruct.name = "Park"
//dog.gender = "F"


let dogStruct2 = DogStruct(name: "Kim", gender: "F")
//dogStruct2.name = "Park"


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
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.purchasePrice
print(stock)


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


struct SomeStruct{
    static var storedTypeProperty = "Some value."
    
    static var computedTypeProperty: Int{
        return 1
    }
}

SomeStruct.storedTypeProperty = "Hello"
SomeStruct.computedTypeProperty
SomeStruct.storedTypeProperty


class SomeClass{
    var count: Int = 0
}

struct SomeStruct{
    var count: Int = 0
}

var someClass1 = SomeClass()
var someClass2 = someClass1
var someClass3 = someClass2

someClass3.count = 2
print(someClass1.count)

var someStruct1 = SomeStruct()
var someStruct2 = someStruct1
var someStruct3 = someStruct2

someStruct2.count = 3
print(someStruct1.count)


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
print(bicycle.currentSpeed)




class Train: Vehichle{
    
    override func makeNoise() {
        super.makeNoise()
        print("Train Noise")
    }
}

let train = Train()
train.makeNoise()


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
        movieCount += 1
    } else{
        songCount += 1
    }
}

for item in library{
    if let movie = item as? Movie{
        print("Movie: \(movie.name), dir. \(movie.direction)")
    } else if let song = item as? Song{
        print("Song: \(song.name), by \(song.artist)")
    }
}


var value = 0;
assert(value == 0)

value = 2
assert(value == 0, "0이 아닙니다.")


func guardTest(value: Int){
    guard value == 0 else { return }
    print("안녕하세요.")
}

guardTest(value: 0)
guardTest(value: 123)


func guardTest(value: Int?){
    guard let value = value else { return }
    print(value)
}

guardTest(value: 0)
guardTest(value: nil)


//protocol SomeProtocol{
//
//}
//
//protocol SomeProtocol2{
//
//}
//
//struct SomeStructure: SomeProtocol, SomeProtocol2{
//
//}
//
//class SomeClass: SomeSuperclass, FirstProtocol, SecondProtocol{
//
//}


protocol FirstProtocol{
    var name: Int{ get set }
    var age: Int{ get }
}

protocol AnotherProtocol{
    static var someTypeProperty: Int{ get set }
    // 프로토콜에서 타입 프로퍼티를 사용하기 위해서는
    // static 키워드를 사용해야한다.
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

protocol SomeProtocol3{
    func someTypeMethod()
}

protocol SomeProtocol4{
    init(params: Int)
}

protocol SomeProtocol5{
    init()
}

class SomeClass: SomeProtocol5{
    required init(){
        
    }
    
    // 클래스에서는 프로토콜이 요구하는 생성자를 생성하려면
    // required 식별자가 필요
    // 구조체와 다른 점
    // 만약 클래스가 상속받을 수 없는 final 생성자라면
    // required 식별자가 필요하지 않다.
    
}


extension Int{
    
    var isEven: Bool{
        return self % 2 == 0
    }
    
    var isOdd: Bool{
        return self % 2 == 1
    }
}




var number = 3
number.isOdd
number.isEven
// 익스텐션은 연산 프로퍼티는 추가할 수 있지만, 연산 프로퍼티는 추가할 수 없다.
// 타입 옵저버도 추가할 수 없다.

extension String{
    func convertToInt() -> Int?{
        return Int(self)
    }
}

var str = "1"
str.convertToInt()


//  enum 타입에 raw value를 가지도록 할 수 있다.

enum CompassPoint: String{
    
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"

}


var direction = CompassPoint.east

direction = .west // west

switch direction{
case .north:
    print(direction.rawValue)
case .south:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)


// 연관값
enum PhoneError{
    case unknown
    case betteryLow(String)
}

var error = PhoneError.betteryLow("배터리가 곧 방전됩니다.")

switch error{
case .betteryLow(let message):
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.")
}
                              

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


let hello = { () -> () in
    print("Hello")
}

hello()


let helloWorld = {(name: String) -> (String) in
    return "Hello, \(name)"
}
// 클로저에서는 전달인자 레이블이 사용되지 않는다.

// helloWorld(name: "Kim") // error
helloWorld("Kim") // Hello, Kim

func doSomething( closure: () -> ()){
    closure()
}

doSomething { () -> () in
    print("Hello")
}

func doSomething2() -> () -> () {
    return { () -> () in
        print("DoSomethingDoSomething")
    }
}

doSomething2()()


// 후행 클로저

doSomething(){
    print("Hi Hi")
}

doSomething{
    print("Hi Hi")
}

func doSomething3(success: () -> (), fail: () -> ()){
    
}

doSomething3 {
    print("success")
} fail: {
    print("fail")
}

func doSomething4(closure: (Int, Int, Int) -> Int){
    closure(1, 2, 3)
}

doSomething4(closure: { (a, b, c) in
    return a + b + c
})

doSomething4(closure: {
    return $0 + $1 + $2
})

doSomething4(closure: {
    $0 + $1 + $2
})

doSomething4(){
    $0 + $1 + $2
}

doSomething4{
    $0 + $1 + $2
}


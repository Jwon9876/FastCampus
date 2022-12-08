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

<!-- ```swift
``` -->
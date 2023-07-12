# WeatherApp

Open Weather API를 사용하여, 입력받은 도시의 날씨 정보를 보여주는 클론 코딩 프로젝트입니다.

### URLSession Life Cycle
    1. Session Configuration을 결정하고, Session을 생성
    2. 통신할 URL과 Request 객체를 설정
    3. 사용할 Task를 결정하고 그에 맞는 Completion Handler나 Delegate 매소드들을 작성
    4. 해당 Task를 실행
    5. Task 완료 후 Completion Handler 클로자가 호출이 됨


### [Open Weather API](https://openweathermap.org/)
Open Weather API의 Key를 발급받아, 코드 상에서 Key를 추가하여, 실행

## codable, decodable, encodable

encodable: 모델 -> JSON으로 인코드

decodable: JSON -> 모델 디코드

codable: encodable +  decodable

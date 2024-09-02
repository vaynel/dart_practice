void main() {
  // map 얕은 복사
  Map<int, int> a = {1: 1};
  Map<int, int> b = a; // 얕은 복사

  a[1] = 2;
  print(a == b); // true (메모리 주소 같음)
  print(a); // {1: 2}
  print(b); // {1: 2}

  // map 깊은 복사
  Map<int, int> c = {1: 1};
  Map<int, int> d = {...c};

  c[1] = 2;
  print(c == d); // false (메모리 주소 다름)
  print(c); // {1: 2}
  print(d); // {1: 1}

  // List 깊은 복사

  // List<int> e = [1];

  // /// 방법1) 배열.toList() 활용
  // List<int> f = e.toList();

  // /// 방법2) 전개 연산자(Spread Operator) 활용
  // List<int> g = [...e];

  // /// 방법3) 반복문 활용
  // List<int> h = [for (var i in e) i];

  // /// 방법4) JSON 직렬화 & 역직렬화 활용
  // import 'dart:convert';
  // List<int> b = jsonDecode(jsonEncode(a)).cast<int>();

// // List 깊은 복사 중첩
//   List<List<int>> a = [[1]];
//   List<List<int>> b = a.map((i) => i.toList()).toList(); // 방법1
//   // List<List<int>> b = a.map((i) => [...i]).toList();  // 방법2
//   // List<List<int>> b = [...a.map((i) => i.toList())];  // 방법3
//   // List<List<int>> b = [...a.map((i) => [...i])];      // 방법4

//   a.add([2]);
//   print(a); // [[1], [2]]
//   print(b); // [[1]]

//   a[0].add(2);
//   print(a); // [[1, 2], [2]]
//   print(b); // [[1]]
//

  // lterable : 순차적으로 접근 가능한 요소의 모음으로, 접근하는 요소만 메모리에 올림
}

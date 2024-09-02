class A {
  final int value;
  const A(this.value);

  @override
  String toString() {
    return "A($value)";
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is A && runtimeType == other.runtimeType && value == other.value;
  }

  @override //hashcode : map, set등의 해시 기반 자료형을 찾을때 ㅅ ㅏ용하는 키값?
  int get hashCode => value.hashCode;
}

void main() {
  print(A(1) == A(1));
  print(A(1));

  A a = A(1);
  Map<A, int> map = {a: 1};
  print(map[a]);

  //a.value = 2; // value가 변경되면 hashCode도 변경됨
  print(map[a]); // null(hashCode 기반 자료형이 정상 작동하지 않음)
}

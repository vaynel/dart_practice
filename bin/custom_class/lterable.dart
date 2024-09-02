import 'dart:math';

void main() {
  /// 2의 1000승
  int n = pow(2, 1000).toInt();

  /// List
  try {
    List<String> a = List.generate(n, (i) => "$i");
    print(a.length);
  } catch (e) {
    print("실행 실패 : $e"); // 실행 실패 : Invalid argument(s): Invalid array length
  }

  /// Iterable
  Iterable<String> b = Iterable.generate(n, (i) => "$i");
  print(b.length); // 1.0715086071862673e+301
  Iterator iterator = b.iterator;
  if (iterator.moveNext()) {
    print(iterator.current); // 0121
  }
  if (iterator.moveNext()) {
    print(iterator.current); // 1
  }
}

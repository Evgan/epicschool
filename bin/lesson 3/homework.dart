import 'dart:math';

/// Практика
// Напишите функцию, которая при заданном числе возвращает массив подмассивов возрастающей длины.
// Пример:
// pyramid(0) => [ ]
// pyramid(1) => [ [1] ]
// pyramid(2) => [ [1], [1, 1] ]
// pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]

pyramid(int n) {
  List<List<int>> list = [];
  var j = 0;
  while (j != n) {
    list.add([for (int i = 0; i <= j; i++) 1]);
    j += 1;
  }
  print(list);
}

// Напишите функцию, которая получает массив чисел и возвращаете сумму всех положительных.
// Пример:
// [1,-4,7,12] => 1 + 7 + 12 = 20

sumOfPositive(List<int> nums) {
  nums.removeWhere((element) => element <= 0);
  var sum = nums.reduce((value, element) => value + element);
  print(sum);
}

void main(List<String> arguments) {
  pyramid(5);
  sumOfPositive([10, -2, 30, 2, 0, -100, 8]);
}

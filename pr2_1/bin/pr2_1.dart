import 'dart:ffi';
import 'package:pr2_1/pr2_1.dart' as pr2_1;
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  /*
  #1
  print('Andrey');
  */

  /*
  #2
  int a = 5;
  int b = 8;
  print(a+b);
  */
  
  /*
  cmd: dart bin/pr2_1.dart
  #3
  int a = int.parse(stdin.readLineSync() ?? '0');
  print('Вот какое число вы ввели: $a');
  */

  /*
  #4
  double m = double.parse(stdin.readLineSync() ?? '0');
  print('Расстояние в сантиметрах: ${m*1000}');
  */

  /*
  #5
  var r = int.parse(stdin.readLineSync() ?? '0');
  print('Диаметр окружности с радиусом $r = ${r*2}');
  */

  /*
  #6
  print('Введите своё имя:');
  String name = stdin.readLineSync() ?? 'безымянный человек';
  print('Привет, $name');
  */

  /*
  #7
  int a = 5;
  int b = 12;
  if (a>b)
  {
    print(a);
  }
  else
  {
    print(b);
  }
  */

  /*
  #8
  print('Введи свой возраст:');
  int age = int.parse(stdin.readLineSync() ?? '0');
  if (age < 18)
  {
    print('Ты ещё маленький');
  }
  else
  {
    print('Ты уже большой');
  }
  */

  /*
  #9
  int a = 13;
  int b = 26;
  if (b % a == 0)
  {
    print('$a - делитель числа $b');
  }
  else
  {
    print('$a - не делитель числа $b');
  }
  */

  /*
  #10
  String str = stdin.readLineSync() ?? '0';
  while (str != '0')
  {
    print('Вот что вы ввели: $str');
    str = stdin.readLineSync() ?? '0';
  }
  */

  /*
  #11
  int num = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 1; i <= 10; i++)
  {
    print('$num * $i = ${num*i}');
  }
  */

  /*
  #12
  int sum = 0;
  for (int i = 100; i <=500; i++)
  {
    sum+=i;
  }
  print(sum);
  */

  /*
  #13
  int a = int.parse(stdin.readLineSync() ?? '0');
  if (a >= 500)
  {
    print('некорректное значение');
    exit(-1);
  }

  int sum = 0;
  for (int i = a; i <= 500; i++)
  {
    sum += i;
  }
  print(sum);
  */

  /*
  #14
  var arr = <int>[94, 65, 10, 13, 56, 17, 55];
  int min = arr[0];
  for (int i = 0; i < arr.length; i++)
  {
    if (arr[i] < min)
    {
      min = arr[i];
    }
  }
  print(min);
  */

  /*
  #15
  var r = Random();
  var arr = <int>[];
  for (int i = 0; i < 10; i++)
  {
    arr.add(r.nextInt(100));
    print(arr[i]);
  }
  */
}

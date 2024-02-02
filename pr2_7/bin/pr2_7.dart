import 'dart:io';

import 'package:pr2_7/pr2_7.dart' as pr2_7;

class Student {
  String surname = "Безымянный";
  DateTime birthDate = DateTime(2000, 1, 1);
  int groupNumber = 0;
  var grades = List.filled(5, 0);
}

class Train {
  String destiny = "";
  int trainNum = 0;
  String departureTime = "00:00";
}

class NumsStorage {
  int num1 = 0;
  int num2 = 0;

  void printNums()
  {
    print("Number 1 is $num1\nNumber 2 is $num2");
  }

  void changeNums(int n1, int n2)
  {
    num1 = n1;
    num2 = n2;
  }

  int sumOfNums()
  {
    return num1 + num2;
  }

  int greatestNum()
  {
    if (num1 > num2) 
    {
      return num1;
    }
    else 
    {
      return num2;
    }
  }
}

class Counter {
  int value = 0;

  Counter([int startValue = 0])
  {
    value = startValue;
  }

  void increase()
  {
    value++;
  }

  void decrease()
  {
    value--;
  }

  int getValue()
  {
    return value;
  }
}

class SomeClass
{
  String name = "";
  int amount = 0;

  SomeClass.with_params(String n, int a)
  {
    name = n;
    amount = a;
  }

  SomeClass.defaults([String n = "VS", int a = 6])
  {
    name = n;
    amount = a;
  }
}

void main(List<String> arguments) {
  /*
  #1
  Student s1 = Student()
    ..surname = "Belyaev"
    ..birthDate = DateTime(2002, 3, 21)
    ..groupNumber = 1
    ..grades = <int>[5, 4, 5, 3, 4];
  Student s2 = Student()
    ..surname = "Compton"
    ..birthDate = DateTime(2001, 6, 16)
    ..groupNumber = 1
    ..grades = <int>[4, 4, 5, 3, 4];

  var students = <Student>[s1, s2];

  printSurname(Student s) => print('#${students.indexOf(s)+1} - ${s.surname}');
  students.forEach(printSurname);

  print("""
1 - изменить фамилию
2 - изменить дату рождения
3 - изменить номер группы
4 - вывести информацию о студенте (по фамилии и дате рождения)""");
  stdout.write('Ваш выбор: ');
  int operation = int.parse(stdin.readLineSync() ?? '0');
  switch (operation)
  {
    case 1:
      stdout.write('Введите номер студента: ');
      int chosenStudentIndex = int.parse(stdin.readLineSync() ?? '1') - 1;
      print('Старое значение: \n${students[chosenStudentIndex].surname}');
      print('Введите новое значение:');
      students[chosenStudentIndex].surname = stdin.readLineSync() ?? 'Безымянный';
    case 2:
      stdout.write('Введите номер студента: ');
      int chosenStudentIndex = int.parse(stdin.readLineSync() ?? '1') - 1;
      print('Старое значение: \n${students[chosenStudentIndex].birthDate}');
      print('Введите новое значение (ГГГГ, ММ, ДД): ');
      var newDate = (stdin.readLineSync() ?? '2000.01.01').split('.');
      students[chosenStudentIndex].birthDate = DateTime(int.parse(newDate[0]), int.parse(newDate[1]), int.parse(newDate[2]));
    case 3:
      stdout.write('Введите номер студента: ');
      int chosenStudentIndex = int.parse(stdin.readLineSync() ?? '1') - 1;
      print('Старое значение: \n${students[chosenStudentIndex].groupNumber}');
      print('Введите новое значение:');
      students[chosenStudentIndex].groupNumber = int.parse(stdin.readLineSync() ?? '0');
    case 4:
      print('Введите фамилию: ');
      String searchSurname = stdin.readLineSync() ?? 'Безымянный';
      print('Введите номер группы: ');
      int searchGroupNum = int.parse(stdin.readLineSync() ?? '0');
      print('$searchSurname, $searchGroupNum');
      for (int i = 0; i < students.length; i++)
      {
        if (students[i].surname == searchSurname && students[i].groupNumber == searchGroupNum)
        {
          print("Фамилия: ${students[i].surname}\nНомер группы: ${students[i].groupNumber}\nДата рождения: ${students[i].birthDate.toString().split(' ')[0]}\nУспеваемость:");
          for (int j = 0; j < students[i].grades.length; j++)
          {
            stdout.write('${students[i].grades[j]} ');
          }
        }
      }
  }
  print('');
  students.forEach(printSurname);
  */

  /*
  #2
  Train t1 = Train()
    ..destiny = "Томск"
    ..trainNum = 1
    ..departureTime = "13:45";
  Train t2 = Train()
    ..destiny = "Новосибирск"
    ..trainNum = 2
    ..departureTime = "11:15";
  Train t3 = Train()
    ..destiny = "Екатеринбург"
    ..trainNum = 3
    ..departureTime = "14:20";

  var trains = <Train>[t1, t2, t3];
  printTrainNums(Train t) => print('Поезд №${trains.indexOf(t) + 1}');
  trains.forEach(printTrainNums);

  stdout.write("Введите номер поезда: ");
  int trainIndex = int.parse(stdin.readLineSync() ?? '1') - 1;
  print("Пункт назначения: ${trains[trainIndex].destiny}\nВремя отправления: ${trains[trainIndex].departureTime}");
  */

  /*
  #3
  NumsStorage ns1 = NumsStorage()
    ..num1 = 7
    ..num2 = 13;
  ns1.printNums();
  print(ns1.sumOfNums());
  print(ns1.greatestNum());
  ns1.changeNums(51, 19);
  ns1.printNums();
  print(ns1.sumOfNums());
  print(ns1.greatestNum());
  */

  /*
  #4
  Counter c = Counter(24);
  print(c.getValue());
  c.decrease();
  c.increase();
  c.increase();
  print(c.getValue());

  Counter c2 = Counter(0);
  print(c2.getValue());
  c2.decrease();
  c2.increase();
  c2.increase();
  print(c2.getValue());
  */

  /*
  #5
  SomeClass o = SomeClass.defaults();
  print("${o.name}, ${o.amount}");
  o = SomeClass.with_params("aughwah", 1981);
  print("${o.name}, ${o.amount}");
  */
}

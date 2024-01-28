import 'dart:ffi';
import 'package:pr2_4/pr2_4.dart' as pr2_4;
import 'dart:math';
import 'dart:io';

enum Operation {add, subtract, multiply, divide, none}

List calc(double n1, double n2, op)
{
  var response = [n1, n2, op, null];

  switch (op)
  {
    case Operation.add:
      response[3] = n1+n2;
      break;
    case Operation.subtract:
      response[3] = n1-n2;
      break;
    case Operation.multiply:
      response[3] = n1*n2;
      break;
    case Operation.divide:
      response[3] = n1/n2;
      break;
  }

  return response;
}

String dateFormat(dtStr)
{
  int currentYear = 2024;
  var daysInMonths = <int>[31, currentYear % 4 == 0 ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  String formattedDate = "";
  var splitted = dtStr.split(".");
  int day = 1;
  int month = 1;
  int year = currentYear;

  try 
  {
    day = int.parse(splitted[0]);
  }
  catch (e)
  {
    print("день нормально вводить надо, ошибка $e\nбудем считать за 1 число");
  }
  try 
  {
    month = int.parse(splitted[1]);
  }
  catch (e)
  {
    print("месяц нормально вводить надо, ошибка $e\nбудем считать за январь");
  }
  try 
  {
    year = int.parse(splitted[2]);
  }
  catch (e)
  {
    print("год нормально вводить надо, ошибка $e\nбудем считать за $currentYear");
  }

  if (year > currentYear)
  {
    print("такой год ещё не придумали, будем считать за $currentYear");
    year = currentYear;
  }
  else if (year < currentYear)
  {
    print("такой год уже забыли, будем считать за $currentYear");
    year = currentYear;
  }

  int totalDays = day;
  for (int i = 0; i < month - 1; i++)
  {
    totalDays += daysInMonths[i];
  }

  switch (totalDays % 7) //DD, 
  {
    case 1:
      formattedDate += "Понедельник, ";
    case 2:
      formattedDate += "Вторник, ";
    case 3:
      formattedDate += "Среда, ";
    case 4:
      formattedDate += "Четверг, ";
    case 5:
      formattedDate += "Пятница, ";
    case 6:
      formattedDate += "Суббота, ";
    case 0:
      formattedDate += "Воскресенье, ";
  }

  formattedDate += "$day "; //DD, XX 

  switch (month) //DD, XX MM, 
  {
    case 1:
      formattedDate += "Января, ";
    case 2:
      formattedDate += "Февраля, ";
    case 3:
      formattedDate += "Марта, ";
    case 4:
      formattedDate += "Апреля, ";
    case 5:
      formattedDate += "Мая, ";
    case 6:
      formattedDate += "Июня, ";
    case 7:
      formattedDate += "Июля, ";
    case 8:
      formattedDate += "Августа, ";
    case 9:
      formattedDate += "Сентября, ";
    case 10:
      formattedDate += "Октября, ";
    case 11:
      formattedDate += "Ноября, ";
    case 12:
      formattedDate += "Декабря, ";
  }

  formattedDate += "$year год"; //DD, XX MM, XXXX YY

  return formattedDate;
}

void main(List<String> arguments) {
  /*
  #1
  var nums = <int>[];
  var r = new Random();

  for (int i = 0; i < 15; i++)
  {
    nums.add(r.nextInt(50));
  }
  nums.forEach(print);
  */

  /*
  #2
  var nums = <int>[];
  int sum = 0;
  for (int i = 0; i < 14; i++)
  {
    nums.add(int.parse(stdin.readLineSync() ?? '0'));
    sum += nums[i];
  }
  nums.add(sum);
  nums.forEach(print);
  */

  /*
  #3
  print("первое число:");
  double num1 = double.parse(stdin.readLineSync() ?? '0');
  print("второе число:");
  double num2 = double.parse(stdin.readLineSync() ?? '0');
  print("выберите действие (+, -, *, /):");
  String charOp = stdin.readLineSync() ?? '+';
  Operation op;

  switch (charOp[0])
  {
    case "+":
      op = Operation.add;
      break;
    case "-":
      op = Operation.subtract;
      break;
    case "*":
      op = Operation.multiply;
      break;
    case "/":
      op = Operation.divide;
      break;
    default:
      op = Operation.none;
      break;
  }

  var resp = calc(num1, num2, op);
  resp.forEach(print);
  */

  /*
  #4

  */

  String dateString = stdin.readLineSync() ?? '01.01.2024';
  print(dateFormat(dateString));

  /*
  #5

  */
}
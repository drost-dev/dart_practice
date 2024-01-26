import 'dart:ffi';
import 'package:pr2_3/pr2_3.dart' as pr2_3;
import 'dart:io';
import 'dart:math';

int squaresFromRectangles(int w, int h, int wSquare)
{
  return (w ~/ wSquare) * (h ~/ wSquare);
}

double biggestNum(double a, double b)
{
  if (a>b)
  {
    return a;
  }
  else
  {
    return b;
  }
}

int posNums(List <int>nums)
{
  int posNumsAmount = 0;
  for (int i = 0; i < nums.length; i++)
  {
    if (nums[i] > 0)
    {
      posNumsAmount++;
    }
  }
  return posNumsAmount;
}

int notEvenPlaceMult(List <int>nums)
{
  int notEvenPlaceNumsMult = 1;
  for (int i = 0; i < nums.length; i++)
  {
    if ((i+1) % 2 != 0)
    {
      notEvenPlaceNumsMult *= nums[i];
    }
  }
  return notEvenPlaceNumsMult;
}

bool areDigitsDecreasing(int n)
{
  bool areDecreasing = true;
  for (int i = 0; i < n.toString().length-1; i++)
  {
    if (int.parse(n.toString()[i]) < int.parse(n.toString()[i+1]))
    {
      areDecreasing = false;
      break;
    }
  }
  if (areDecreasing)
  {
    return true;
  }
  else
  {
    return false;
  }
}

void main(List<String> arguments) {
  /*
  #1
  print("Четверг\nЯнварь\nАндрей");
  */
  
  /*
  #2
  int a = int.parse(stdin.readLineSync() ?? '0');
  int b = int.parse(stdin.readLineSync() ?? '0');
  int c = int.parse(stdin.readLineSync() ?? '0');

  a *= 2;
  b -= 3;
  c *= c;

  print('output = ${a+b+c}');
  */

  /*
  #3
  print(squaresFromRectangles(15,10,5));
  */

  /*
  #4
  print(biggestNum(55.42, 7.5));
  */

  /*
  #5
  var numList = <int>[5, -4, 9, 7, 0, -2, 66, -3, 4];
  print(posNums(numList));
  */

  /*
  #6
  var numList = <int>[5, -4, 9, 7, 1, -2, 66, -3, 4];
  print(notEvenPlaceMult(numList));
  */
  
  /*
  #7
  print(areDigitsDecreasing(99874333321));
  */

  /*
  #8
  var nums = <int>[];
  var r = Random();
  for (int i = 0; i < r.nextInt(25) + 1; i++)
  {
    nums.add(24-i*3);
  }

  for (int i = 0; i < nums.length; i++)
  {
    print(nums[i]);
  }
  */

  /*
  #9
  var nums = <int>[0, 2, 5, 6, 8, 9, 13, 16, 18, 21, 22, 25, 26, 30];
  int x = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 0; i < nums.length; i++)
  {
    if (nums[i] == x)
    {
      print('Массив содержит число $x');
      break;
    }
  }

  print('Массив не содержит число $x');
  */

  /*
  #10
  var r = Random();
  var squaresArr = <int>[];

  for (int i = 0; i < r.nextInt(20) + 5; i++)
  {
    squaresArr.add(i*i);
    print(squaresArr[i]);
  }
  */
}
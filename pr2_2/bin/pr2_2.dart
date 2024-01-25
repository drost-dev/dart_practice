import 'dart:ffi';
import 'dart:io';
import 'package:pr2_2/pr2_2.dart' as pr2_2;
import 'dart:math';

void welcome()
{
  print('Welcome');
}

void nameWelcome(String name)
{
  print('Hello, $name');
}

double mult(double a, double b)
{
  return a*b;
}

double mToCm(double m)
{
  return m*1000;
}

bool isDivider(double a, double b)
{
  if (b % a == 0)
  {
    return true;
  }
  else
  {
    return false;
  }
}

int minElem(List<int> arr)
{
  int min = arr[0];
  for (int i = 0; i<arr.length; i++)
  {
    if (arr[i] < min)
    {
      min = arr[i];
    }
  }
  return min;
}

int diameter(int r)
{
  return r*2;
}

int biggest(int a, int b)
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

void main(List<String> arguments) {
  /*
  #1
  var r = Random();
  var arr = <int>[];
  int min = 101;
  for (int i = 0; i < 10; i++)
  {
    arr.add(r.nextInt(100));
    print(arr[i]);
    if (arr[i] < min)
    {
      min = arr[i];
    }
  }
  print('Минимальное: $min');
  */

  /*
  #2
  welcome();
  */

  /*
  #3
  nameWelcome('Andrey');
  */

  /*
  #4
  print(mult(5, 17));
  */

  /*
  #5
  print(mToCm(1));
  */

  /*
  #6
  print(isDivider(5, 15));
  print(isDivider(4, 15));
  */

  /*
  #7
  var arr = <int>[15, 2, 49, 13, 81];
  print(minElem(arr));
  */

  /*
  #8
  print(diameter(5));
  */

  /*
  #9
  print(biggest(6,1));
  */
  
  /*
  #10
  var elems = [];
  String s = stdin.readLineSync() ?? "";
  String shortest = s;
  String longest = s;
  while (s != "")
  {
    if (s.length > longest.length)
    {
      longest = s;
    }
    if (s.length < shortest.length)
    {
      shortest = s;
    }
    s = stdin.readLineSync() ?? "";
  }
  print("shortest: \"$shortest\", longest: \"$longest\"");
  */
}

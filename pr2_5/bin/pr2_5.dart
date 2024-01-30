import 'package:pr2_5/pr2_5.dart' as pr2_5;
import 'dart:io';
import 'dart:math';

List<int> homework(List<int> nums)
{
  int minElemIndex = 0;
  int maxElemIndex = 0;
  int sum = 0;
  int mult = 1;
  for (int i = 0; i < nums.length; i++)
  {
    if (nums[i] > 0)
    {
      sum += nums[i];
    }

    if (nums[i] > nums[maxElemIndex])
    {
      maxElemIndex = i;
    }
    else if (nums[i] < nums[minElemIndex])
    {
      minElemIndex = i;
    }
  }

  if (minElemIndex < maxElemIndex)
  {
    for (int i = minElemIndex+1; i < maxElemIndex; i++)
    {
      mult *= nums[i];
    }
  }
  else
  {
    for (int i = maxElemIndex+1; i < minElemIndex; i++)
    {
      mult *= nums[i];
    }
  }

  var response = [sum, mult];
  return response;
}

int expression(int a, int b)
{
  int resp = (a+4*b)*(a-3*b)+a*a;
  return resp;
}

void main(List<String> arguments) {
  /*
  #1
  int n = int.parse(stdin.readLineSync() ?? '0');
  int sum = 0;
  for (int i = 1; i <= n; i++)
  {
    sum += i;
  }
  print(sum);
  */

  /*
  #2
  var nums = <int>[6, 1, 2, 3, 4, 5, 0];
  var resp = homework(nums);
  print("${resp[0]} ${resp[1]}");
  */

  /*
  #3
  var posNums = <int>[];
  var r = new Random();
  int num = r.nextInt(48)+2;
  while (num % 2 != 0)
  {
    num = r.nextInt(8)+2;
  }
  posNums.add(num);
  for (int i = 1; i < 10; i++)
  {
    int num = r.nextInt(48+i*10)+2;
    while (num % 2 != 0 || num <= posNums[i-1])
    {
      num = r.nextInt(48+i*10)+2;
    }
    posNums.add(num);
    print(posNums[i]);
  }
  */

  /*
  #4
  String s = 'abasdasdasdasd';
  if (s.startsWith('abc'))
  {
    s = s.replaceFirst('abc', 'www');
  }
  else
  {
    s += 'zzz';
  }
  print(s);
  */

  /*
  #5
  print(expression(5, 3));
  */

  /*
  #6
  var nums = <int>[1, -5, 0, 3,-4];
  for (int i = 0; i < nums.length; i++)
  {
    nums[i] *= -1;
    print(nums[i]);
  }
  */

  /*
  #7
  int x = 4;
  int y = 3;
  int r = 5;

  if (pow(pow(x, 2) + pow(y, 2), 0.5) <= r)
  {
    print('точка [$x; $y] принадлежит окружности');
  }
  else
  {
    print('точка [$x; $y] не принадлежит окружности');
  }
  */
}

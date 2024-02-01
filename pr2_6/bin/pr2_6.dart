import 'dart:io';
import 'dart:math';

import 'package:pr2_6/pr2_6.dart' as pr2_6;

List<int> avgMonthsTemp(List<List<int>> yearTemp)
{
  var avgMonthTempArr = List.filled(12, 0);
  int sum = 0;
  for (int i = 0; i < 12; i++)
  {
    for (int j = 0; j < 30; j++)
    {
      sum += yearTemp[i][j];
    }
    avgMonthTempArr[i] = sum ~/ 30;
    sum = 0;
  }

  return avgMonthTempArr;
}

Map<String, int> avgMonthsTempMap(Map<String, List<int>> yearTemp)
{
  var avgMonthTempArr = <String, int>{
    "January": 0,
    "February": 0,
    "March": 0,
    "April": 0,
    "May": 0,
    "June": 0,
    "July": 0,
    "August": 0,
    "September": 0,
    "October": 0,
    "November": 0,
    "December": 0
  };
  int sum = 0;
  for (int i = 0; i < 12; i++)
  {
    for (int j = 0; j < 30; j++)
    {
      sum += yearTemp[yearTemp.keys.elementAt(i)]![j];
    }
    avgMonthTempArr[yearTemp.keys.elementAt(i)] = sum ~/ 30;
    sum = 0;
  }

  return avgMonthTempArr;
}

bool isPalindrome(String s)
{
  for (int i = 0; i < s.length ~/ 2; i++)
  {
    if (s[i] != s[s.length-1-i])
    {
      return false;
    }
  }
  return true;
}

void main(List<String> arguments) {
  /*
  #1
  print('Dart is cool!');
  */

  /*
  #2
  int a = int.parse(stdin.readLineSync() ?? '0');
  int b = int.parse(stdin.readLineSync() ?? '0');
  print(a+b);
  */
  
  /*
  #3
  var nums = <int>[];
  for (int i = 0; i < 10; i++)
  {
    nums.add(i*2+1);
    print(nums[i]);
  }
  */
  
  /*
  #4
  var nums = <int>[];
  var r = new Random();
  for (int i = 0; i < 10; i++)
  {
    int num = r.nextInt(100)+3;
    while (num % 3 != 0)
    {
      num = r.nextInt(100)+3;
    }
    nums.add(num);
    print(nums[i]);
  }
  */
  
  /*
  #5
  var matrix = <List<int>>[];
  for (int i = 0; i < 10; i++)
  {
    matrix.add(<int>[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
  }

  for (int i = 0; i < 10; i++)
  {
    matrix[0][i] = 1;
    matrix[i][0] = 1;
    for (int j = 0; j < i; j++)
    {
      matrix[i][j+1] = matrix[i-1][j+1] + matrix[i][j];
      matrix[j+1][i] = matrix[j+1][i-1] + matrix[j][i];
    }
  }
  
  for (int i = 0; i < 10; i++)
  {
    for (int j = 0; j < 10; j++)
    {
      stdout.write('${matrix[i][j]} ');
    }
    print('');
  }
  */
  
  /*
  #6
  var yearTemp = <List<int>>[];
  int min = -35;
  int max = -20;
  var r = new Random();
  print('Ежедневная температура за год:');
  for (int i = 0; i < 12; i++)
  {
    var monthArr = <int>[];
    for (int j = 0; j < 30; j++)
    {
      monthArr.add(max - r.nextInt(max-min));
      stdout.write('${monthArr[j]} ');
    }
    min = i < 6 ? min += 10 : min -= 11;
    max = i < 6 ? max += 9 : max -= 10;
    print('');
    yearTemp.add(monthArr);
  }

  var avgTempMonth = avgMonthsTemp(yearTemp);
  for (int i = 0; i < 12; i++)
  {
    stdout.write('${avgTempMonth[i]} ');
  }
  print("");

  avgTempMonth.sort();
  
  for (int i = 0; i < 12; i++)
  {
    stdout.write('${avgTempMonth[i]} ');
  }
  */
  
  /*
  #7
  var yearTemp = <String, List<int>>{
    "January": List.filled(30, 0),
    "February": List.filled(30, 0),
    "March": List.filled(30, 0),
    "April": List.filled(30, 0),
    "May": List.filled(30, 0),
    "June": List.filled(30, 0),
    "July": List.filled(30, 0),
    "August": List.filled(30, 0),
    "September": List.filled(30, 0),
    "October": List.filled(30, 0),
    "November": List.filled(30, 0),
    "December": List.filled(30, 0)
  };

  int min = -35;
  int max = -20;
  var r = new Random();
  var months = yearTemp.keys;

  print('Ежедневная температура за год:');
  for (int i = 0; i < 12; i++)
  {
    var monthArr = <int>[];
    for (int j = 0; j < 30; j++)
    {
      monthArr.add(max - r.nextInt(max-min));
      stdout.write('${monthArr[j]} ');
    }
    min = i < 6 ? min += 10 : min -= 11;
    max = i < 6 ? max += 9 : max -= 10;
    print('');
    yearTemp[months.elementAt(i)] = monthArr;
  }

  var avgTempMonth = avgMonthsTempMap(yearTemp);
  print("Средние температуры за месяц: ");
  for (int i = 0; i < 12; i++)
  {
    stdout.write('${avgTempMonth[avgTempMonth.keys.elementAt(i)]} ');
  }
  */

  /*avgTempMonth.sort();
  
  for (int i = 0; i < 12; i++)
  {
    stdout.write('${avgTempMonth[i]} ');
  }*/

  /*
  #8
  var nums1 = <int>[1, 5, 7];
  var nums2 = <int>[2, 4, 6];
  var nums = [...nums1, ...nums2];

  for (int i = 0; i < nums.length - 1; i++)
  {
    for (int j = 0; j < nums.length - 1 - i; j++)
    {
      if (nums[j] > nums[j+1])
      {
        int temp = nums[j];
        nums[j] = nums[j+1];
        nums[j+1] = temp;
      }
    }
  }

  for (int i = 0; i < nums.length; i++)
  {
    print(nums[i]);
  }
  */

  /*
  #9
  print(isPalindrome("ASDASDsDSADSA"));
  */
}

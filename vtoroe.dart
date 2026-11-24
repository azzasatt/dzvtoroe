import 'dart:io';

void main() {
  print('Задача 1');
  for (var row in task1(3, 4)) {
    print(row);
  }

  print('\nЗадача 2');
  for (var row in task2(3, 4)) {
    print(row);
  }

  print('\nЗадача 3');
  for (var row in task3(3, 4, [7, 2, 9])) {
    print(row);
  }

  List<List<int>> sample = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12]
  ];

  print('\nЗадача 4');
  print(task4(sample, 2));

  print('\nЗадача 5');
  print(task5(sample, 3));

  List<List<int>> sample2 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [10, 11, 12]
  ];

  print('\nЗадача 6');
  print(task6(sample2));

  print('\nЗадача 7');
  print(task7(sample));
}

List<List<int>> task1(int m, int n) {
  List<List<int>> mat = List.generate(m, (i) => List.filled(n, 0));
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      mat[i][j] = 10 * (i + 1);
    }
  }
  return mat;
}

List<List<int>> task2(int m, int n) {
  List<List<int>> mat = List.generate(m, (i) => List.filled(n, 0));
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      mat[i][j] = 5 * (j + 1);
    }
  }
  return mat;
}

List<List<int>> task3(int m, int n, List<int> setVals) {
  List<List<int>> mat = List.generate(m, (i) => List.filled(n, 0));
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      mat[i][j] = setVals[i];
    }
  }
  return mat;
}

List<int> task4(List<List<int>> mat, int k) {
  int n = mat[0].length;
  List<int> res = [];
  for (int j = 0; j < n; j++) {
    res.add(mat[k - 1][j]);
  }
  return res;
}

List<int> task5(List<List<int>> mat, int k) {
  int m = mat.length;
  List<int> res = [];
  for (int i = 0; i < m; i++) {
    res.add(mat[i][k - 1]);
  }
  return res;
}

List<int> task6(List<List<int>> mat) {
  int m = mat.length;
  int n = mat[0].length;
  List<int> res = [];
  for (int i = 1; i < m; i += 2) {
    for (int j = 0; j < n; j++) {
      res.add(mat[i][j]);
    }
  }
  return res;
}

List<int> task7(List<List<int>> mat) {
  int m = mat.length;
  int n = mat[0].length;
  List<int> res = [];
  for (int j = 0; j < n; j += 2) {
    for (int i = 0; i < m; i++) {
      res.add(mat[i][j]);
    }
  }
  return res;
}
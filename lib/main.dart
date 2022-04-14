//导入 'math'库
import 'dart:io';
import 'dart:math';

void argument() {
  // 变量
  var name = 'Voyager I'; //string
  var year = 1977; //整形
  var antennaDiameter = 3.7; //浮点型
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune']; //列表
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  }; //字典

  //if 条件判断
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  //for 循环 遍历
  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  //while 循环
  while (year < 2016) {
    year += 1;
  }
}

//函数
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

//=> (胖箭头) 简写语法用于仅包含一条语句的函数。

//对象
class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;
  //构建函数，便于给成员变量赋值的语法糖。
  Spacecraft(this.name, this.launchDate) {}

  //命名初始化函数 调用默认构造函数
  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');

    var launchDate = this.launchDate;

    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

//继承
class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}

// 异步
Future<void> createDescriptions(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

// 异常
Except() async {
  // throw 关键字抛出一个异常
  var astronauts = 1;
  if (astronauts == 0) {
    throw StateError('No astronauts.');
  }
  var flybyObjects = [1, 2, 3];
  // try 捕获一个异常:
  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}

void main() {
  print("aaaaa");

  argument();

  var result = fibonacci(20);
  print(result);

  var now = new DateTime.now();
  print(now);
  print(now.millisecondsSinceEpoch);

  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  Except();
}

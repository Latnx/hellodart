testList() {
  print("**********testList*************");

  // 创建一个空字符串列表。
  var grains = <String>[];
  print(grains.isEmpty);
  //增
  var fruits = ['apples', 'oranges'];
  fruits.add('kiwis');
  fruits.addAll(['grapes', 'bananas']);
  print(fruits.length);
  // 删
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  print(fruits.length == 4);
  fruits.clear();
  print(fruits.isEmpty);

  var vegetables = List.filled(3, 'broccoli');
  print(vegetables);

  // 查
  print(fruits.indexOf('apples'));

  // 排序
  fruits.sort((a, b) => a.compareTo(b));
}

testSet() {
  print("**********testSet*************");

  // Create
  var ingredients = <String>{};

  // Add
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  print(ingredients.length);
  ingredients.add('gold');
  print(ingredients.length);

  // Remove
  ingredients.remove('gold');
  print(ingredients.length);

  // Check
  print(ingredients.contains('titanium'));
  print(ingredients.containsAll(['titanium', 'xenon']));
  //交集 intersection
}

testMap() {
  print("**********testMap*************");
  // Init
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  var searchTerms = Map();
  var nobleGases = Map<int, String>();

  // remove()
  nobleGases = {54: 'xenon'};
  print(nobleGases.containsKey(54));
  nobleGases.remove(54);
  print(nobleGases.containsKey(54));
  // foreach
  var keys = hawaiianBeaches.keys;
  print(keys.length);
  print(Set.from(keys).contains('Oahu'));

  var values = hawaiianBeaches.values;
  print(values.length);
  print(values.any((v) => v.contains('Waikiki')));
  // 使用 containsKey() 方法检查一个 map 中是否包含某个key 
  //如果当且仅当该 key 不存在于 map 中，且要为这个 key 赋值，
  //可使用 putIfAbsent() 方法。该方法需要一个方法返回这个 value。
}

void main() {
  print("aaaa");
  // 数字转换
  // 使用int和double 的parse() 来实现string转换数字
  print(int.parse('42') != 42);
  print(int.parse('0x42') != 66);
  print(double.parse('0.50') != 0.5);
  // 通过添加 radix 参数，指定进制
  print(int.parse('42', radix: 16));
  // 使用 toString() 方法将整型或双精度浮点类型转换为字符串类型。
  // 使用 toStringAsFixed(). 指定小数点右边的位数，
  // 使用 toStringAsPrecision(): 指定字符串中的有效数字的位数。
  print(123.456.toString() == '123.456');

  //String
  // 检测 add 是否在字符串中
  print('Never odd or even'.contains('odd'));
  // 检测字符串中是否已 add 开头
  print('Never odd or even'.startsWith('Never'));
  // 检测字符串中是否已 add 结尾
  print('Never odd or even'.endsWith('even'));
  // 查找substring角标
  print('Never odd or even'.indexOf('odd'));
  print("🇨🇳"[0]);
  // 大小写转换
  print('web apps'.toUpperCase() == 'WEB APPS');
  print('WEB APPS'.toLowerCase() == 'web apps');
  //使用 trim() 移除首尾空格。
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  print(greeting + ' ' + greetingTemplate);

  testList();
  testSet();
  testMap();

  
}

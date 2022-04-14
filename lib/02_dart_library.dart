
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

  // print("🇨🇳");
  //
}

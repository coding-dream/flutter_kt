// 入门：https://github.com/arcticfox1919/learn-dart/blob/master/45%E5%88%86%E9%92%9F%E5%BF%AB%E9%80%9F%E5%85%A5%E9%97%A8%EF%BC%88%E4%B8%8A%EF%BC%89.md
import 'dart:collection';

void main() {
  testHello();
}

void testHello() {
  print("hello world");

  // 在Dart中，所有能够使用变量引用的都是对象，每个对象都是一个类的实例。数字、函数和 null 也都是对象。所有的对象都继承于Object类。
  // 要注意，没有初始化的变量默认值为 null。数值类型变量的默认值也是 null。
  // 数值类型num有两个具体子类，分别为int和double，其中int为整数值，范围是-2^53至2^53之间；double则是64位的双精度浮点数。
  // 1.通过显式指定类型来定义变量
  String name = "张三";
  num age = 18;
  print(age);

  // 2.使用关键字var，不指定类型
  var address = "深南大道";
  var id = 100;

  // 使用var定义变量，即使未显式指定类型，一旦赋值后类型就被固定
  // 因此使用var定义的变量不能改变数据类型

  // 如想动态改变变量的数据类型，应当使用dynamic或Object来定义变量。
  // dynamic声明变量
  // 建议在编写代码时，尽可能显式指定变量类型，这样可以提升代码可读性与调试的便利性。
  dynamic var1 = "hello";
  var1 = 19;
  print(var1);

  // Object声明变量
  Object var2 = 20;
  var2 = "Alice";
  print(var2);

  // 使用final和const定义常量
  // final和const都是用来定义常量的，但是有一些细微的区别：
  // final只能赋值一次，而const是编译时常量，可以在编译时就确定值。
  // final在第一次使用时被初始化，而const是在编译时被初始化。
  // final不仅有const的编译时常量的特性，还有延迟初始化的特性。
  // final修饰的变量必须在声明时初始化，而const修饰的变量可以在声明时初始化，也可以在构造函数中初始化。

  // 1.使用final关键字定义常量
  final height = 10;

  // 2.使用const关键字定义常量
  const pi = 3.14;

  final time = new DateTime.now(); // 正确
  // const time = new DateTime.now(); // 错误
  const list = const [1, 2, 3]; // 正确
  // const list = [1,2,3];            // 错误

  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };
  print(image);

  // 内置类型的常用操作
  // String 转 int
  var one = int.parse('1');

  // String 转 double
  var onePointOne = double.parse('1.1');

  // int 转 String
  String oneAsStr = 1.toString();

  // double 转 String
  String piAsStr = 3.14159.toStringAsFixed(2); // 保留两位 '3.14'

  // Dart也支持整数位操作，<<、 >>、&、|
  print((3 << 1) == 6); // 0011 << 1 == 0110
  print((3 >> 1) == 1); // 0011 >> 1 == 0001
  print((3 | 4) == 7); // 0011 | 0100 == 0111

  // 1.Dart可以使用单引号或双引号来创建字符串
  var s1 = "hello";
  var s2 = 'world';

  // 2.类似Python，Dart可以使用三引号来创建包含多行的字符串
  var multiLine1 = """你可以像这样，创建一个
包含了多行的字符串内容
""";

  var multiLine2 = '''你也可以使用三个单引号，创建一个
包含了多行的字符串内容
''';

  // 3.类似Python，还可以在字符串字面值的前面加上`r`来创建原始字符串，则该字符串中特殊字符可以不用转义
  var path = r'D:\workspace\code';

  // 4.Dart支持使用"+"操作符拼接字符串
  var greet = "hello" + " world";

  // 5.Dart提供了插值表达式"${}"，也可以用于拼接字符串
  var aStr = "hello,${name}";
  print(aStr); // hello,王五

  // 当仅取变量值时，可以省略花括号
  var aStr2 = "hello,$name"; // hello,王五

  // 当拼接的是一个表达式时，则不能省略花括号
  var str1 = "link";
  var str2 = "click ${str1.toUpperCase()}";
  print(str2); // click LINK

  // 6. 与Java不同，Dart使用"=="来比较字符串的内容
  print("hello" == "world");

  // 布尔类型
  // Dart中的布尔类型用法同Java，仅有false、true两个值，不能使用0、非0或者null、非null来表达false和true。与Java不同的是，布尔类型的默认值为null
  bool flags;
  // null
  // print(flags);
  // 列表
  // 创建列表
  var list_data = [1, 2, 3];
  // 下标从0开始。使用length可以访问list的长度
  print(list_data[0]);
  print(list_data.length);

  // 可以使用add添加元素
  list_data.add(5);

  // 可在list字面量前添加const关键字，定义一个不可改变的 列表（编译时常量）
  var constantList = const [1, 2, 3];
  constantList[1] = 1;     // 报错

  // 映射
  // 又称为关联数组，相当于Java中的HashMap

  // 1.通过字面量创建Map
  var gifts = {
    'first' : 'partridge',
    'second': 'turtledoves',
    'fifth' : 'golden rings'
  };

  // 2.使用Map类的构造函数创建对象
  var pic = new Map();
  // 往Map中添加键值对
  pic['first'] = 'partridge';
  pic['second'] = 'turtledoves';
  pic['fifth'] = 'golden rings';

  // 3.获取Map的长度
  print(pic.length);

  // 4.查找Map
  print(pic["first"]);
  print(pic["four"]);    // 键不存在则返回 null

  // ============ END ============

}

// 函数
// 在Dart中，函数（或方法） 也是对象，它的类型是 Function。 这意味着，函数可以赋值给变量，也可以当做其他函数的参数。
// Dart中定义函数，基本上与Java类似
String greet(String name){
  return "hello,$name";
}

// 在Dart中，类型是可选，可以省略显式的类型，但仍然建议显式指定类型。
// 要注意，函数也是对象，所有函数都有返回值。当没有指定返回值的时候，函数会返回null。当然，如果你强行使用void来修饰函数，则函数真的没有返回值，这种情况就另当别论了。
greetV2(name){
  return "hello,$name";
}
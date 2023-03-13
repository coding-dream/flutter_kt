class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}
void main() {
  // 1.使用new关键字实例化对象
  Person p1 = new Person("张三", 20);
  p1.printInfo();
  // 2.省略new关键字实例化对象
  Person p2 = Person("李四", 30);
  p2.printInfo();
  // 3.使用匿名对象实例化对象
  Person p3 = Person("王五", 40);
  p3.printInfo();
  // 4.使用匿名对象实例化对象
  Person("赵六", 50).printInfo();
}
/**
 * 判断类型is
 *   a is int//bool//
 * Strings字符串
 * '''可以多行显示（3个单引号）
 * Numbers数字
 *   int
 *   double
 * Boolean(布尔)
 *   bool
 *  List数组
 *  ex：var A =['1',1,true]
 *      var a = <String>['','','','']
 *      var a = new List<类型>.filled(固定长度,参数)
 *  set 无序 没有下标可遍历
 *  创建方法
 *
    在 Dart 中，你可以使用多种方法来创建 Set。以下是一些常见的创建 Set 的方式：

    1.使用 Set 字面量：
    Set<int> numbers = {1, 2, 3, 4, 5};
    2.使用构造函数创建 Set：
    Set<int> numbers = Set<int>();
    numbers.add(1);
    numbers.add(2);
    numbers.add(3);
    3.使用 Set.from 构造函数从另一个可迭代对象（如 List）创建 Set：
    List<int> list = [1, 2, 3, 4, 5];
    Set<int> numbers = Set<int>.from(list);
    4.使用 Set.from 构造函数从一个 Iterable 创建 Set：
    Iterable<int> iterable = [1, 2, 3, 4, 5];
    Set<int> numbers = Set<int>.from(iterable);
    5.使用 Set 类型的构造函数：
    Set<int> numbers = Set<int>.of([1, 2, 3, 4, 5]);
    Set<int>.of([1, 2, 3, 4, 5])：使用 Set.of 构造函数，将包含整数元素 [1, 2, 3, 4, 5] 的 List 转换为 Set。
 *  Maps字典
 *  var  = {
 *  a:1,b:2
 *  }
 *  var a = new Map()
 *  a['l'] = 2
 *  Runes UTF-32编码字符串
 *var 定义
 * 类型定义（小写的如 int  bool）
 * const定义
 * final定义（与const一样是不可被改变）
 * **/







/**
 * 复核运算
 *1. ~/=
 * int x = 10;
    int y = 3;
    x ~/= y; // 将x除以y的整数部分赋值给x
    print(x); // 输出结果为3
   2.??=在变量 没有值时等于它
       int A
       A??=22
    3.??
     int a  = 2
    var v = a??10
    看a有没有值 为不为空

 * **/


/**
 * 判断类型
 *isEven用于检查整数是否是偶数
 *isOdd: 用于检查整数是否是奇数
 * **/


/**
 * List方法
 *1.add 增加 list.add(42);
 *2.addAll拼接数组 list.addAll([10, 20, 30]);
 *3.insert:  list.insert(1, 99); // 在索引 1 处插入 99
 *4.index0f查找传入具体值
 *5.remove 除传入具体值 list.remove(42);
 *6. removeAt 删除传入索引值list.removeAt(1); // 删除索引 1 处的元素
 *7. removeWhere: 根据指定条件删除元素。
 * list.removeWhere((element) => element % 2 == 0); // 删除偶数

   8. clear: 清空列表中的所有元素。list.clear();
    elementAt: 根据索引获取元素。
    var element = list.elementAt(2); // 获取索引 2 处的元素

   9. fillRange用于填充 List 中的一定范围内的元素，将指定范围内的元素替换为指定的值
    numbers.fillRange(1, 3, 10); // 将索引 1 到 2 的元素替换为 10
    [1, 2, 3, 4, 5]; = [1, 10, 10, 4, 5]

   10. insert(index,value); 指定位置插入
    numbers.insert(2, 10); // 在索引 2 处插入元素 10

   11. insertAll(index,list) 指定位置插入List
    contains: 检查列表是否包含指定元素。list.contains(42);返回bool
    sort: 对列表元素进行排序。list.sort();

  12.  map: 对列表中的每个元素应用函数，并返回一个新的列表。
    var squaredList = list.map((element) => element * element).toList();
  13.  forEach: 对列表中的每个元素执行指定的操作。
    list.forEach((element) {
    print(element);
    });

  14.  reversed: 返回一个包含与原始列表相同元素但顺序相反的新列表。
    var reversedList = list.reversed.toList();
  15.  sublist: 返回指定范围内的子列表。不包括最后一位
    var sublist = list.sublist(1, 3); // 获取索引 1 到 2 的子列表
   16. getRange: 返回指定范围内的元素的迭代器。不包括最后一位
    var range = list.getRange(1, 3); // 获取索引 1 到 2 的元素迭代器

   17. toList()其他类型转换成List
    join() List转换成字符串
    List<String> fruits = ["apple", "banana", "cherry", "date"];
    String joinedFruits = fruits.join(", ");
    print(joinedFruits); // 输出 "apple, banana, cherry, date"
   18. split() 字符串转化成List
    String text = "apple,banana,cherry,date";
    List<String> fruits = text.split(",");
    print(fruits); // 输出 ["apple", "banana", "cherry", "date"]
    19.ever every 用于检查 Iterable 中的所有元素是否都满足指定条件，如果全部满足条件，则返回 true，否则返回 false。
    List<int> numbers = [1, 2, 3, 4, 5];
    bool allEven = numbers.every((number) => number.isEven);
    // allEven 的值为 false，因为不是所有元素都是偶数
    20.where where 用于从 Iterable 中选择满足指定条件的元素，并返回一个新的 Iterable，包含符合条件的元素。
    List<int> numbers = [1, 2, 3, 4, 5];
    Iterable<int> evenNumbers = numbers.where((number) => number.isEven);
    // evenNumbers 包含 [2, 4]
    21.any 方法：

    any 用于检查 Iterable 中是否至少有一个元素满足指定条件，如果有，则返回 true，否则返回 false。
    List<int> numbers = [1, 2, 3, 4, 5];
    bool hasEven = numbers.any((number) => number.isEven);
    // hasEven 的值为 true，因为至少有一个元素是偶数

 * **/
void main(){
  var a  = TextGeneric();
      a.start();
  // var b  = 20;
  //     print(b);
}
class TextGeneric {
  // 创建 FunctionLearn 的对象

  void start() {
    Cache<String>cache1=Cache();
    cache1.setItem('cache1', 'value');
    String resStr1 = cache1.getItem('cache1');
    print('获取缓存内容: $resStr1');

  }
}
// 创建一个 泛型 类
class Cache<T>{
  // static final Map<String, Object> _cached = Map();
  static final Map _cached = Map();
  void setItem(String key, T value) {
    _cached[key] = value;
  }
  T getItem(String key) {
    return _cached[key] as T;
  }
}

class User {
  final String id;
  final String name;
  final String role;

  User(this.id, this.name, this.role);
}

// 创建店长
var storeManager = User('1', '张三', '店长');

// 创建副店长
var assistantManager = User('2', '李四', '副店长');

// 创建组长
var groupManager1 = User('3', '王五', '组长');

// 创建店员（外部成员）
var member1 = User('4', '小明', '店员');
var member2 = User('5', '小红', '店员');
var member3 = User('6', '小李', '店员');


void main() {
  // 打印组织结构
  print('树洞平台组织结构：');
  print('店长：${storeManager.name}');
  print('副店长：${assistantManager.name}');
  print('组长：${groupManager1.name}');
  print('店员：');
  print(' - ${member1.name}');
  print(' - ${member2.name}');
  print(' - ${member3.name}');
}

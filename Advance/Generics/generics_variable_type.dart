/// Generics Type Naming Conventions
// T --> Type (represents a single data type)
// E --> Element (commonly used for collections [list, set])
// K --> Key (use for map keys)
// V --> Value (used for map values)

/// T (Type)
class Box<T> {
  T item;

  Box(this.item);
}

/// E (Element)
class MyList<E> {
  List<E> items = [];

  void add(E element) {
    items.add(element);
  }
}

/// K and V (Key-Value)
class Pair<K, V> {
  K key;
  V value;

  Pair(this.key, this.value);
}

void main() {
  // T (Type)
  Box<int> intBox = Box(10);
  Box<String> stringBox = Box("Dart");
  print(intBox.item); // 10
  print(stringBox.item); // Dart

  // E (Element)
  MyList<String> myList = MyList();
  myList.add('hello');
  myList.add('world');
  print(myList.items); // [hello, world]

  // K and V (Key-Value)
  Pair<int, String> user = Pair(1, "Ratndeep");
  print(user.key); // 1
  print(user.value); // Ratndeep
}

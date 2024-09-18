void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list); //Setelah diperbaiki
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var data = ['2241720036', 'Putri Norchasana'];
  var listTest = [0, ...?data];
  print(listTest);

  bool promoActive = true;
  // bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Langkah 5

  // var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];

  var login = 'Manager'; // Mendefinisikan variabel login
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];

  print(nav2);

  // Langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

  
}

void main() {
  //var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  names1.add('2241720036');
  names1.add('Putri Norchasana');

  var data = {'2241720036', 'Putri Norchasana'};
  names2.addAll(data);
  print(names1);
  print(names2);

}

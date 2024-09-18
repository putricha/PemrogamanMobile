void main() {
  // Langkah 1dan perbaikan
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // Langkah 3
  var record1 = (2, 3);
  print(record1);
  print(tukar(record1));

  // Langkah 4
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ("Putri", 21);
  print(mahasiswa);

  // Langkah 5
  var mahasiswa2 = ('first', a: 'Putri Norchasana', b: '2241720036', 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);

  (String, int, String) getBiodata() {
    return ('Putri', 21, '2241720036');
  }

  var (name, age, nim) = getBiodata();

  print('Name  :$name');
  print('Age   :$age');
  print('NIM   :$nim');
}

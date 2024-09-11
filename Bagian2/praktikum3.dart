void main() {
// // Langkah 1
//   for (Index=10;index<27;index++){
//   print(Index);
// }

//Terjadi error undefine name index karen tipe data variabel tidak di deklarasi

// Langkah 2
// Perbaikan

  for (int index = 10; index < 27; index++) {
    print(index);
  }

// Langkah 3

// for (int index=10;index<27;index++){
//   If (index == 21) break;
//     Else If (index > 1 || index < 7) continue;
//     print(index);

// }

// Perbaikan
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break;
    } else if (index > 1 || index < 7) {
      continue;
    }
    print(index);
  }
}

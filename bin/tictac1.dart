import 'dart:io';

void main() {
  stdout.write("Mau ukuran papan berapa x berapa? ");
  int userChoice = int.parse(stdin.readLineSync());
  print("Berikut papan dengan ukuran $userChoice x $userChoice : \n");

  drawBoard(userChoice);
}

void drawBoard(int squareSize) {
  // Basic building blocks
  String rowLines = " ---";
  String colLines = "|   ";

  // For loop for drawing the board
  for (var i = 0; i < squareSize; i++) {
    print(rowLines * squareSize);
    print(colLines * (squareSize + 1));
  }

  // Add the last line to the board
  print("${rowLines * squareSize}\n");
List<String> shifrSpiral(String message, int key) {
  int rows = key;
  int cols = key;
  List<List<String>> matrix = List.generate(rows, (i) => List.generate(cols, (j) => ''));
  
  int index = 0;

  for (int layer = 0; layer < rows / 2 && layer < cols / 2; layer++) {
    // Traverse top row
    for (int i = layer; i < cols - layer; i++) {
      matrix[layer][i] = message[index++];
    }

    // Traverse right column
    for (int i = layer + 1; i < rows - layer; i++) {
      matrix[i][cols - layer - 1] = message[index++];
    }

    // Traverse bottom row
    for (int i = cols - layer - 2; i >= layer; i--) {
      matrix[rows - layer - 1][i] = message[index++];
    }

    // Traverse left column
    for (int i = rows - layer - 2; i > layer; i--) {
      matrix[i][layer] = message[index++];
    }
  }

  List<String> encryptedMessage = [];
  for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        encryptedMessage.add(matrix[i][j]);
      }
    }
  return encryptedMessage;
}
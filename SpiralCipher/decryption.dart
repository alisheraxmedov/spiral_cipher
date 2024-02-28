String decryptSpiral(List<String> encryptedMessage, int key) {
  int rows = key;
  int cols = key;
  List<List<String>> matrix = List.generate(
    rows,
    (i) => List.generate(cols, (j) => ''),
  );

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      matrix[i][j] = encryptedMessage[i * cols + j];
    }
  }

  List<String> decryptedMessage = [];

  for (int layer = 0; layer < rows / 2 && layer < cols / 2; layer++) {
    // Traverse top row
    for (int i = layer; i < cols - layer; i++) {
      decryptedMessage.add(matrix[layer][i]);
    }

    // Traverse right column
    for (int i = layer + 1; i < rows - layer; i++) {
      decryptedMessage.add(matrix[i][cols - layer - 1]);
    }

    // Traverse bottom row
    for (int i = cols - layer - 2; i >= layer; i--) {
      decryptedMessage.add(matrix[rows - layer - 1][i]);
    }

    // Traverse left column
    for (int i = rows - layer - 2; i > layer; i--) {
      decryptedMessage.add(matrix[i][layer]);
    }
  }
  return decryptedMessage.join();
}

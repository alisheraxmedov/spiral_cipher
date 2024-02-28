import "decryption.dart";
import "encryption.dart";
import 'dart:math';

void main() {
  int key = 5;
  String orginalText = spiral(key, "AlisherAxmedovfromUzbekistan");

  List<String> encryptedMessage = shifrSpiral(orginalText.toUpperCase(), key);
  
  print('Original Message: $orginalText');
  print('Encrypted Message: ${encryptedMessage.join()}');
  print('Decrypted Message: ${decryptSpiral(encryptedMessage, key)}');
}

String spiral(int key, String text) {
  num countLetters = pow(key, 2) - text.length;

  for (int i = 0; i < countLetters; i++) {
    text += "*";
  }

  return text;
}


/*
Be careful when choosing a key! 
Because choosing too large or too small a 
key number affects the strength of the ciphertext.
*/
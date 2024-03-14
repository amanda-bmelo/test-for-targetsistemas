void main() {
  String textoOriginal = "Testandooo!";
  String textoInvertido = inverterString(textoOriginal);
  print("Texto original: $textoOriginal");
  print("Texto invertido: $textoInvertido");
}

String inverterString(String texto) {
  List<String> caracteres = texto.split('');
  String textoInvertido = '';
  for (int i = caracteres.length - 1; i >= 0; i--) {
    textoInvertido += caracteres[i];
  }
  return textoInvertido;
}

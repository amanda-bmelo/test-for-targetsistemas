void main() {
  int numeroDesejado = 21;

  int a = 0, b = 1, c;
  bool pertence = false;

  while (a <= numeroDesejado) {
    if (a == numeroDesejado) {
      pertence = true;
      break;
    }
    c = a + b;
    a = b;
    b = c;
  }

  if (pertence) {
    print("$numeroDesejado pertence à sequência de Fibonacci.");
  } else {
    print("$numeroDesejado não pertence à sequência de Fibonacci.");
  }
}

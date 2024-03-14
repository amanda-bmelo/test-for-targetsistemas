void main() {
  Map<String, double> faturamentoPorEstado = {
    'SP': 67836.43,
    'RJ': 36678.66,
    'MG': 29229.88,
    'ES': 27165.48,
    'Outros': 19849.53
  };

  double faturamentoTotal = faturamentoPorEstado.values.reduce((a, b) => a + b);

  Map<String, double> percentualPorEstado = {};
  faturamentoPorEstado.forEach((estado, faturamento) {
    double percentual = (faturamento / faturamentoTotal) * 100;
    percentualPorEstado[estado] = percentual;
  });

  print('Percentual de representação de cada estado no faturamento total mensal:');
  percentualPorEstado.forEach((estado, percentual) {
    print('$estado: ${percentual.toStringAsFixed(2)}%');
  });
}

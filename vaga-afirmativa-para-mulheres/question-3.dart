import 'dart:convert';
import 'dart:io';

void main() {
  File file = File('income.json');
  String jsonString = file.readAsStringSync();
  Map<String, dynamic> faturamentoMensal = json.decode(jsonString);

  List<int> faturamentoDiario = List<int>.from(faturamentoMensal['faturamento']);

  int menorFaturamento = faturamentoDiario.reduce((a, b) => a < b ? a : b);
  int maiorFaturamento = faturamentoDiario.reduce((a, b) => a > b ? a : b);

  int totalFaturamento = faturamentoDiario.fold(0, (a, b) => a + b);
  int diasComFaturamento = faturamentoDiario.where((valor) => valor > 0).length;
  double mediaMensal = totalFaturamento / diasComFaturamento;

  int diasAcimaDaMedia = faturamentoDiario.where((valor) => valor > mediaMensal).length;

  print('Menor valor de faturamento diário: $menorFaturamento');
  print('Maior valor de faturamento diário: $maiorFaturamento');
  print('Número de dias no mês com faturamento acima da média: $diasAcimaDaMedia');
}

import 'package:dart_imc/dart_imc.dart'as app;
import 'package:test/test.dart';

void main() {
 test("Calculando imc", (){
  expect(app.icmCalc(85.500, 1.80), 26.39);
 });
}
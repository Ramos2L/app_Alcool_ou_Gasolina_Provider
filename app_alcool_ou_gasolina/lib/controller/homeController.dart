import 'package:app_alcool_ou_gasolina/model/homeModel.dart';
import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  String resultado = "";

  String calcular(String controllerAlcool, String controllerGasolina) {
    final modelHome = HomeModel(controllerAlcool, controllerGasolina);
    double? precoAlcool = double.tryParse(modelHome.alcool);
    double? precoGasolina = double.tryParse(modelHome.gasolina);

    if (precoAlcool == null || precoGasolina == null) {
      resultado = 'Entrada inválida. Por favor, informe números válidos';
      return resultado;
    } else {
      if ((precoAlcool / precoGasolina) >= 0.7) {
        resultado = 'Abasteça com Gasolina';
        return resultado;
      } else {
        resultado = 'Abasteça com Álcool';
        return resultado;
      }
    }
  }
}

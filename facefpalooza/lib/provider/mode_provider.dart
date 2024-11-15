import 'package:flutter/material.dart';

class ModeProvider with ChangeNotifier {
  bool _lightModeEnable = true;

  bool get lightModeEnable => _lightModeEnable; // Um getter para acessar o valor de _lightModeEnable

  set lightModeEnable(bool value) { // Um setter que permite modificar o valor de _lightModeEnable
    _lightModeEnable = value; // Variável que armazena o modo claro ou escuro
  }

  chaneMode() { // Método é responsável por alternar entre o modo claro e escuro
    if (_lightModeEnable == true) {
      _lightModeEnable = false; // Muda para escuro

      notifyListeners(); // Notifica os ouvintes sobre a alteração do estado
    }
    else if (_lightModeEnable == false) {
      _lightModeEnable = true; // Muda para claro

      notifyListeners(); // Notifica os ouvintes sobre a alteração do estado
    }
  }
}

class ButtonsModelB {
  String method;
  List<ButtonB> buttons;

  ButtonsModelB({
    required this.method,
    required this.buttons,
  });
}

class ButtonB {
  String iconBase64;
  int positionX;
  int positionY;
  String labelBase64;
  String backgroundColorHex;

  ButtonB({
    required this.iconBase64,
    required this.positionX,
    required this.positionY,
    required this.labelBase64,
    required this.backgroundColorHex,
  });
}

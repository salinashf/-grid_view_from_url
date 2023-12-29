class ButtonsModelScreen {
  String method;
  List<ButtonsMacro> buttons;

  ButtonsModelScreen({required this.method, required this.buttons});

  factory ButtonsModelScreen.fromJson(Map<String, dynamic> json) {
    return ButtonsModelScreen(method: json['Method'] as String, buttons: json['Buttons'] as List<ButtonsMacro>);
  }
}

class ButtonsMacro {
  String iconBase64;
  int positionX;
  int positionY;
  String labelBase64;
  String backgroundColorHex;

  ButtonsMacro(
      {required this.iconBase64,
        required this.positionX,
        required this.positionY, required this.labelBase64, required this.backgroundColorHex});

  factory ButtonsMacro.fromJson(Map<String, dynamic> json) {
    return ButtonsMacro(
        iconBase64: json['IconBase64'] as String,
        positionX: json['Position_X'] as int,
        positionY: json['Position_Y'] as int,
        labelBase64: json['LabelBase64'] as String,
        backgroundColorHex: json['BackgroundColorHex'] as String);
  }
}

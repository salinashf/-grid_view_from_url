class ButtonsModelScreen {
  String? method;
  List<ButtonsMacro>? buttons;

  ButtonsModelScreen({this.method, this.buttons});

  ButtonsModelScreen.fromJson(Map<String, dynamic> json) {
    method = json['Method'];
    if (json['Buttons'] != null) {
      buttons = <ButtonsMacro>[];
      json['Buttons'].forEach((v) {
        buttons!.add(ButtonsMacro.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Method'] = method;
    if (buttons != null) {
      data['Buttons'] = buttons!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ButtonsMacro {
  String? iconBase64;
  int? positionX;
  int? positionY;
  String? labelBase64;
  String? backgroundColorHex;

  ButtonsMacro({this.iconBase64, this.positionX, this.positionY, this.labelBase64, this.backgroundColorHex});

  ButtonsMacro.fromJson(Map<String, dynamic> json) {
    iconBase64 = json['IconBase64'];
    positionX = json['Position_X'];
    positionY = json['Position_Y'];
    labelBase64 = json['LabelBase64'];
    backgroundColorHex = json['BackgroundColorHex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['IconBase64'] = iconBase64;
    data['Position_X'] = positionX;
    data['Position_Y'] = positionY;
    data['LabelBase64'] = labelBase64;
    data['BackgroundColorHex'] = backgroundColorHex;
    return data;
  }
}

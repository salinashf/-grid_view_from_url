class ButtonsModelC {
  String? method;
  List<ButtonC>? buttons;

  ButtonsModelC({this.method, this.buttons});

  ButtonsModelC.fromJson(Map<String, dynamic> json) {
    method = json['Method'];
    if (json['Buttons'] != null) {
      buttons = <ButtonC>[];
      json['Buttons'].forEach((v) {
        buttons!.add(ButtonC.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Method'] = method;
    if (buttons != null) {
      data['Buttons'] = buttons!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ButtonC {
  String? iconBase64;
  int? positionX;
  int? positionY;
  String? labelBase64;
  String? backgroundColorHex;

  ButtonC(
      {this.iconBase64,
      this.positionX,
      this.positionY,
      this.labelBase64,
      this.backgroundColorHex});

  ButtonC.fromJson(Map<String, dynamic> json) {
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

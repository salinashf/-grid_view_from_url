class ButtonsModelScreen {
  String? method;
  List<ButtonsMacro>? buttons;

  ButtonsModelScreen({this.method, this.buttons});

  ButtonsModelScreen.fromJson(Map<String, dynamic> json) {
    method = json['Method'];
    if (json['Buttons'] != null) {
      buttons = <ButtonsMacro>[];
      json['Buttons'].forEach((v) {
        buttons!.add(new ButtonsMacro.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Method'] = this.method;
    if (this.buttons != null) {
      data['Buttons'] = this.buttons!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IconBase64'] = this.iconBase64;
    data['Position_X'] = this.positionX;
    data['Position_Y'] = this.positionY;
    data['LabelBase64'] = this.labelBase64;
    data['BackgroundColorHex'] = this.backgroundColorHex;
    return data;
  }
}

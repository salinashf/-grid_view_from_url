class ButtonsGridModel {
  String? method;
  List<ButtonsMacro>? buttons;

  ButtonsGridModel({this.method, this.buttons});

  ButtonsGridModel.fromJson(Map<String, dynamic> json) {
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

  ButtonsMacro({required this.iconBase64, required this.positionX, required this.positionY, required this.labelBase64, required this.backgroundColorHex});

  ButtonsMacro.fromJson(Map<String, dynamic> json) {
    iconBase64 = json['IconBase64']!.toString();
    positionX = int.tryParse(json['Position_X']?.toString() ?? '')!;
    positionY = int.tryParse(json['Position_Y']?.toString() ?? '')!;
    labelBase64 = json['LabelBase64']!.toString();
    backgroundColorHex = json['BackgroundColorHex']!.toString();
  }
  int  positonABS(){
    return  int.tryParse('${positionY}${positionX}')!  ;

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

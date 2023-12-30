class ConfigGridModel {
  String? method;
  int? rows;
  int? columns;
  int? buttonSpacing;
  int? buttonRadius;
  bool? buttonBackground;
  double? brightness;
  bool? autoConnect;
  String? wakeLock;
  bool? supportButtonReleaseLongPress;

  ConfigGridModel(
      {this.method,
        this.rows,
        this.columns,
        this.buttonSpacing,
        this.buttonRadius,
        this.buttonBackground,
        this.brightness,
        this.autoConnect,
        this.wakeLock,
        this.supportButtonReleaseLongPress});

  ConfigGridModel.fromJson(Map<String, dynamic> json) {
    method = json['Method'];
    rows = json['Rows'];
    columns = json['Columns'];
    buttonSpacing = json['ButtonSpacing'];
    buttonRadius = json['ButtonRadius'];
    buttonBackground = json['ButtonBackground'];
    brightness = json['Brightness'];
    autoConnect = json['AutoConnect'];
    wakeLock = json['WakeLock'];
    supportButtonReleaseLongPress = json['SupportButtonReleaseLongPress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Method'] = this.method;
    data['Rows'] = this.rows;
    data['Columns'] = this.columns;
    data['ButtonSpacing'] = this.buttonSpacing;
    data['ButtonRadius'] = this.buttonRadius;
    data['ButtonBackground'] = this.buttonBackground;
    data['Brightness'] = this.brightness;
    data['AutoConnect'] = this.autoConnect;
    data['WakeLock'] = this.wakeLock;
    data['SupportButtonReleaseLongPress'] = this.supportButtonReleaseLongPress;
    return data;
  }
}

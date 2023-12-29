extension StringControl on String {
  bool isNullOrEmpty() => this == null || this == '';
 //bool isNullEmptyOrFalse() => this == null || this == '' || !this;
  //bool isNullEmptyZeroOrFalse() =>  this == null || this == '' || !this || this == 0;
}
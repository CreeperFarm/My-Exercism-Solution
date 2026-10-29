String twoFer([String? name]) {
  String re = (name == null || name.isEmpty) ? "you" : name;
  return "One for $re, one for me.";
}
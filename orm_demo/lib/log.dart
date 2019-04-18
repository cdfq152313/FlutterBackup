
class Log{
  static StringBuffer _sb = StringBuffer();
  static void debug(msg){
    print(msg);
    _sb.writeln(msg);
  }

  static String out() => _sb.toString();

}
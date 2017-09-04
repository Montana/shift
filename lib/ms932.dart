part of sjis;

class MS932Codec extends Encoding {
  const MS932Codec();
  
  String get name => "Windows-31J";

  Converter<String, List<int>> get encoder => new MS932Encoder();
  Converter<List<int>, String> get decoder => new MS932Decoder();
}

class MS932Encoder extends SjisEncoder {
  static var _instance = null;
  
  factory MS932Encoder() {
    if(_instance == null) _instance = new MS932Encoder._internal();
    return _instance;
  }
  
  MS932Encoder._internal(): super._internal() {
    utf_sjis.addAll(new Map.fromIterables(g_ms932_utf.values, g_ms932_utf.keys));   
  }  
}

class MS932Decoder extends SjisDecoder {
  static var _instance = null;
  
  factory MS932Decoder() {
    if(_instance == null) _instance = new MS932Decoder._internal();
    return _instance;
  }
  
  MS932Decoder._internal(): super._internal() {
    sjis_utf.addAll(g_ms932_utf);
  }
}
# ShiftJIS

Converter for SJIS(shift_jis) and MS932(Windows-31J).

Convertion table (Hash map) in partuclar from ShiftJIS units to UTF code units. This is hard-corded in <pre>sjis_utf_map.dart</pre>

The hash map from the UTF code unit to SJIS code unit is generated in the constructor of SjisEncoder (Converts from String to Sjis code units).

Written by Montana Mendy.
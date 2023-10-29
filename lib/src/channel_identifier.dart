import 'dart:convert';

import 'package:crypto/crypto.dart';

class ChannelIdentifier {
  ChannelIdentifier.fromPluginName(String pluginName)
      : identifier = _generateIdentifier(pluginName);


  ChannelIdentifier(this.identifier);

  final String identifier;
}

String _generateIdentifier(String pluginName) {
  final time = DateTime.now().millisecondsSinceEpoch.toString();
  final id = pluginName + '_' + time;
  return md5.convert(utf8.encode(id)).toString();
}

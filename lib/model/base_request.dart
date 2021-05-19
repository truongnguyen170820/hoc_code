class BaseRequest {

  String sessionId;

  BaseRequest({this.sessionId});

  Map<String, String> toHeaderMap() {
    Map<String, String> map = new Map();
    map["Appkey"] = "1234567890abcdef";
    if (sessionId != null) {
      map["SessionId"] = this.sessionId;
    }
    return map;
  }
}

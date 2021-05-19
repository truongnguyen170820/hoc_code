import 'package:dio/dio.dart';
import 'package:flutter_app/model/api_constants.dart';
import 'package:flutter_app/model/base_response.dart';
import 'package:flutter_app/model/data_fetch_call.dart';
import 'package:flutter_app/model/request_header.dart';
import 'package:flutter_app/utils/api_response.dart';
import 'package:flutter_app/utils/network_util.dart';
import 'package:rxdart/rxdart.dart';

class ApiService extends DataFetchCall<JDIResponse> with Header {
  String _path;
  Map<String, dynamic> _request;

  ApiService(String path, Map<String, dynamic> request,
      Subject<ApiResponse<JDIResponse>> responseSubject)
      : super(responseSubject) {
    this._request = request;
    this._path = path;
  }

  @override
  bool shouldFetchFromDB() {
    return false;
  }

  @override
  void loadFromDB() {}

  @override
  Future<Response> createApiAsync({CancelToken cancelToken}) {
    return networkUtil.post(ApiConstants.BASE_URL + _path,
        mapData: _request, headers: getHeader(),cancelToken: cancelToken);
  }

  @override
  void onSuccess(JDIResponse response) {}

  @override
  JDIResponse parseJson(Response response) {
    return JDIResponse.fromJson(response.data);
  }
}
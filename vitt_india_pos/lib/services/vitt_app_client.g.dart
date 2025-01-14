// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vitt_app_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _VittAppClient implements VittAppClient {
  _VittAppClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<RefreshTokenResponse> refreshToken(refreshTokenRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(refreshTokenRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RefreshTokenResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/login/v1/refresh-token',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RefreshTokenResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

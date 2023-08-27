// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiService implements ApiService {
  _ApiService(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<NetworkResponse<LoginResponseModel>> login(phoneNumber) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'phoneNumber': phoneNumber};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NetworkResponse<LoginResponseModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NetworkResponse<LoginResponseModel>.fromJson(
      _result.data!,
      (json) => LoginResponseModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<NetworkResponse<OtpVerifyResponseModel>> verifyOtp(
      requestModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NetworkResponse<OtpVerifyResponseModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/verify-otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NetworkResponse<OtpVerifyResponseModel>.fromJson(
      _result.data!,
      (json) => OtpVerifyResponseModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<NetworkResponse<AccountDetailsModel>> userDetails() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NetworkResponse<AccountDetailsModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/userDetails',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NetworkResponse<AccountDetailsModel>.fromJson(
      _result.data!,
      (json) => AccountDetailsModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<NetworkResponse<List<AddressModel>>> userAddress() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NetworkResponse<List<AddressModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/userAddress',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NetworkResponse<List<AddressModel>>.fromJson(
      _result.data!,
      (json) => (json as List<dynamic>)
          .map<AddressModel>(
              (i) => AddressModel.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
    return value;
  }

  @override
  Future<NetworkResponse<List<CartModel>>> getCarts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NetworkResponse<List<CartModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'cart/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NetworkResponse<List<CartModel>>.fromJson(
      _result.data!,
      (json) => (json as List<dynamic>)
          .map<CartModel>((i) => CartModel.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
    return value;
  }

  @override
  Future<EmptyNetworkResponse> addToCart(productId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'productId': productId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EmptyNetworkResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'cart/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EmptyNetworkResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<EmptyNetworkResponse> updateCart(
    productId,
    quantity,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'productId': productId,
      'quantity': quantity,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EmptyNetworkResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'cart/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EmptyNetworkResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<EmptyNetworkResponse> deleteCart(productId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'productId': productId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EmptyNetworkResponse>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'cart/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EmptyNetworkResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NetworkResponse<List<OrderModel>>> getAllOrders() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NetworkResponse<List<OrderModel>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'order/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NetworkResponse<List<OrderModel>>.fromJson(
      _result.data!,
      (json) => (json as List<dynamic>)
          .map<OrderModel>(
              (i) => OrderModel.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
    return value;
  }

  @override
  Future<EmptyNetworkResponse> placeOrder(addOrderToModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(addOrderToModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EmptyNetworkResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'order/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EmptyNetworkResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NetworkResponse<List<ProductModel>>> getAllProducts(
    page,
    offset,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'page': page,
      'offset': offset,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NetworkResponse<List<ProductModel>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'products/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NetworkResponse<List<ProductModel>>.fromJson(
      _result.data!,
      (json) => (json as List<dynamic>)
          .map<ProductModel>(
              (i) => ProductModel.fromJson(i as Map<String, dynamic>))
          .toList(),
    );
    return value;
  }

  @override
  Future<EmptyNetworkResponse> addAddress(
    address,
    state,
    name,
    phoneNumber,
    city,
    pincode,
    isDefault,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'address': address,
      'state': state,
      'name': name,
      'phoneNumber': phoneNumber,
      'city': city,
      'pincode': pincode,
      'isDefault': isDefault,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EmptyNetworkResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/addAddress/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EmptyNetworkResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<EmptyNetworkResponse> editAddress(
    id,
    name,
    pincode,
    address,
    city,
    state,
    phoneNumber,
    isDefault,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'id': id,
      'name': name,
      'pincode': pincode,
      'address': address,
      'city': city,
      'state': state,
      'phoneNumber': phoneNumber,
      'isDefault': isDefault,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EmptyNetworkResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/editAddress/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EmptyNetworkResponse.fromJson(_result.data!);
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

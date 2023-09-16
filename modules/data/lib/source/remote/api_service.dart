import 'package:data/di/di.dart';
import 'package:dio/dio.dart';
import 'package:data/model/account_details_model.dart';
import 'package:data/model/address_model.dart';
import 'package:data/model/cart_model.dart';
import 'package:data/model/common/base_response.dart';
import 'package:data/model/order_model.dart';
import 'package:data/model/product_model.dart';
import 'package:data/model/request/add_order_request_model.dart';
import 'package:data/model/request/otp_verify_request_model.dart';
import 'package:data/model/response/login_response_model.dart';
import 'package:data/model/response/otp_verify_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
@injectable
abstract class ApiService {
  @factoryMethod
  factory ApiService(Dio dio, @Named(DIConstants.baseUrl) String baseUrl) =>
      _ApiService(
        dio,
        baseUrl: baseUrl,
      );

  @POST('auth/login')
  Future<NetworkResponse<LoginResponseModel>> login(
    @Field() String phoneNumber,
  );

  @POST('auth/verify-otp')
  Future<NetworkResponse<OtpVerifyResponseModel>> verifyOtp(
    @Body() OTPVerifyRequestModel requestModel,
  );

  @GET('auth/userDetails')
  Future<NetworkResponse<AccountDetailsModel>> userDetails();

  @GET('auth/userAddress')
  Future<NetworkResponse<List<AddressModel>>> userAddress();

  @GET('cart/')
  Future<NetworkResponse<List<CartModel>>> getCarts();

  @POST('cart/')
  Future<EmptyNetworkResponse> addToCart(@Field() int productId);

  @PATCH('cart/')
  Future<EmptyNetworkResponse> updateCart(
    @Field() int productId,
    @Field() int quantity,
  );

  @DELETE('cart/')
  Future<EmptyNetworkResponse> deleteCart(@Field() int productId);

  @GET('order/')
  Future<NetworkResponse<List<OrderModel>>> getAllOrders();

  @POST('order/')
  Future<EmptyNetworkResponse> placeOrder(
    @Body() AddOrderRequestModel addOrderToModel,
  );

  @POST('products/')
  Future<NetworkResponse<List<ProductModel>>> getAllProducts(
    @Field() int page,
    @Field() int offset,
  );

  @POST('auth/addAddress/')
  Future<EmptyNetworkResponse> addAddress(
    @Field() String address,
    @Field() String state,
    @Field() String name,
    @Field() String phoneNumber,
    @Field() String city,
    @Field() String pincode,
    @Field() bool isDefault,
  );

  @POST('auth/editAddress/')
  Future<EmptyNetworkResponse> editAddress(
    @Field() int id,
    @Field() String? name,
    @Field() String? pincode,
    @Field() String? address,
    @Field() String? city,
    @Field() String? state,
    @Field() String? phoneNumber,
    @Field() bool? isDefault,
  );
}

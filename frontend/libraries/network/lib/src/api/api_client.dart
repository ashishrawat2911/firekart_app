import 'package:dio/dio.dart';
import 'package:network/network.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://raw.githubusercontent.com/ashishrawat2911/flutter_commerce/master/backend/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("faq.json")
  Future<List<FaqModel>> getFaqs();

  @GET("products.json")
  Future<List<ProductModel>> getProducts();
}

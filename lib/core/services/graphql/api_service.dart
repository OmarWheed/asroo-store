import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://api.escuelajs.co')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

}

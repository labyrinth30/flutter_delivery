import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_delivery/restaurant/model/restaurant_detail_model.dart';
import 'package:retrofit/http.dart';
part 'restaurant_repository.g.dart';

@RestApi()
abstract class RestaurantRepository{
  // http://$ip/restaurant
  factory RestaurantRepository(Dio dio, {String baseUrl})
  = _RestaurantRepository;

  // http://$ip/restaurant/
  // @GET('/')
  // paginate();

  // http://$ip/restaurant/:id
  @GET('/{id}')
  @Headers({
    'accessToken' : 'true',
  })
  Future<RestaurantDetailModel> getRestaurantDetail({
    // 파라미터의 id가 /{id}로 들어감
    @Path() required String id,
});


}
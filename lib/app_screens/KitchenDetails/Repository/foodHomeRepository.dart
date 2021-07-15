
import 'package:desichatkara/app_screens/KitchenDetails/model/foodDetailsModel.dart';
import 'package:desichatkara/helper/api_base_helper.dart';

class FoodHomeRepository{
  ApiBaseHelper _helper=new ApiBaseHelper();


  Future<FoodDetailsModel> foodDetails(_categoryId,_vendorId,_cartId, _userId,_distance, String token) async{

    final response = await _helper.getWithHeader("productlist?category_id=$_categoryId&vendor_id=$_vendorId&cartid=$_cartId&user_id=$_userId&distance=$_distance","Bearer $token");
    return FoodDetailsModel.fromJson(response);
  }


}
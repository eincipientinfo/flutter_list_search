import 'dart:async';

import 'package:dio/dio.dart';
import 'package:quovantis_test/model/approved_food.dart';
import 'package:quovantis_test/utils/CommonApiClass.dart';

class ApprovedFoodApiProvider {
  Future<ApprovedFood> getApprovedFoodList() async {
    Response response = await CommonApiClass.callAPI(
      "http://php.demo4work.com/dev6/jsonbin.php",
      null,
      null,
      0,
    );
    if (response.statusCode == 200 && response.data != null) {
      ApprovedFood approvedFoodResponse =
          ApprovedFood.fromJson(response.data.toString());
      return approvedFoodResponse;
    } else {
      throw Exception('Failed to load schedule');
    }
  }
}

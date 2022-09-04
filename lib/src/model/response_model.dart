
import 'package:tatadigitalcodingtest/src/constants/base_constants.dart';
import 'package:tatadigitalcodingtest/src/model/get_news_detail_model.dart';
import 'package:tatadigitalcodingtest/src/model/get_news_list_wrapper.dart';

enum ResponseDataType {
  newsList,
  none
}

class ResponseModel<T> {
  bool status=false;
  int statusCode;
  String message="";
  T? dataModel;

  ResponseModel(this.status, this.message, {this.statusCode = 0});

  static ResponseModel<T> fromJson<T>(response, {isDataAvailable = true, statusCode = 0, type = ResponseDataType.none, message = ""}) {
    ResponseModel<T> responseModel = ResponseModel(statusCode == 200, BaseConstants.success, statusCode: statusCode);
    var data;

    if (isDataAvailable) {
      switch (type) {
        case ResponseDataType.newsList:
          data = GetNewsListWrapper.fromJson(response);
          break;
      }
    }

    responseModel.dataModel = data;
    return responseModel;
  }
}
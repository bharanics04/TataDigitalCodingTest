import 'package:tatadigitalcodingtest/src/base/base_provider.dart';
import 'package:tatadigitalcodingtest/src/constants/api_constants.dart';
import 'package:tatadigitalcodingtest/src/model/get_news_list_wrapper.dart';
import 'package:tatadigitalcodingtest/src/model/response_model.dart';

class NewsNetworkProvider extends BaseProvider{

  Future<ResponseModel<GetNewsListWrapper>> onGetNewsList(String category) async {
    return getData<GetNewsListWrapper>(ApiConstants.baseUrl+ApiConstants.getNewsList(category), isAuthorized: false, type: ResponseDataType.newsList);
  }

}
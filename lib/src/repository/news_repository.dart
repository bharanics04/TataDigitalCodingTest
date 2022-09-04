import 'package:tatadigitalcodingtest/src/model/get_news_list_wrapper.dart';
import 'package:tatadigitalcodingtest/src/model/response_model.dart';
import 'package:tatadigitalcodingtest/src/network_provider/news_network_provider.dart';

class NewsRepository{
  final NewsNetworkProvider _mNewsNetworkProvider=NewsNetworkProvider();

  Future<ResponseModel<GetNewsListWrapper>> getNewsList(String category) async=> await _mNewsNetworkProvider.onGetNewsList(category);

}
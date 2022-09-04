import 'package:tatadigitalcodingtest/src/model/get_news_detail_model.dart';

class GetNewsListWrapper {
  late List<GetNewsDetailModel> mNewsList;

  GetNewsListWrapper({required this.mNewsList});

  GetNewsListWrapper.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      mNewsList = [];
      json['data'].forEach((v) {
        mNewsList.add(GetNewsDetailModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['data'] = mNewsList.map((v) => v.toJson()).toList();
    return data;
  }
}
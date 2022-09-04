import 'package:tatadigitalcodingtest/src/constants/base_constants.dart';
import 'package:tatadigitalcodingtest/src/model/get_news_detail_model.dart';
import 'package:tatadigitalcodingtest/src/model/get_news_list_wrapper.dart';
import 'package:tatadigitalcodingtest/src/model/response_model.dart';
import 'package:tatadigitalcodingtest/src/repository/news_repository.dart';
import 'package:tatadigitalcodingtest/src/view/news_list/news_list_view.dart';

class NewsListBloc{
  final NewsRepository _mNewsRepository=NewsRepository();
  late NewsListViewState _mView;

  void setView(NewsListViewState view) {
    _mView=view;
  }

  getNewsList() async{
    _mView.showProgress();
    ResponseModel<GetNewsListWrapper> newsWrapper=await _mNewsRepository.getNewsList(BaseConstants.categoryType);
    if(newsWrapper.status){
      _mView.setNewsList(newsWrapper.dataModel!.mNewsList);
    }else{
      _mView.showProgress(isLoading: false);
      _mView.showToast(BaseConstants.somethingWentWrong);
    }
  }

}
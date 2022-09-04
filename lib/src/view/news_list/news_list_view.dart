import 'package:flutter/material.dart';
import 'package:tatadigitalcodingtest/src/constants/base_constants.dart';
import 'package:tatadigitalcodingtest/src/model/get_news_detail_model.dart';
import 'package:tatadigitalcodingtest/src/view/news_list/news_list_bloc.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({Key? key}) : super(key: key);

  @override
  State<NewsListView> createState() => NewsListViewState();
}

class NewsListViewState extends State<NewsListView> {
  late List<GetNewsDetailModel> _mNewsList=[];
  late NewsListBloc _mNewsListBloc;
  bool mLoading=true;

  @override
  void initState() {
    init();
    super.initState();
  }

  init(){
    _mNewsListBloc=NewsListBloc();
    _mNewsListBloc.setView(this);
    _mNewsListBloc.getNewsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("News List")),body: mLoading?loadingView():_mNewsList.isNotEmpty?ListView.builder(itemCount: _mNewsList.length,itemBuilder: (BuildContext context,int index){
      return Padding(padding: const EdgeInsets.all(10),child: Text(_mNewsList[index].mTitle!,style: const TextStyle(fontSize: 14,color: Colors.black),),);
    }):Column(mainAxisAlignment: MainAxisAlignment.center,children: const [
        Center(child: Text(BaseConstants.noItemsFound,style: TextStyle(fontSize: 14,color: Colors.black),),)
    ],));
  }

  loadingView(){
    return const Center(child: CircularProgressIndicator());
  }

  showProgress({bool isLoading=true}){
    setState(() {
      mLoading=isLoading;
    });
  }

  void showToast(String msg) {
    debugPrint(msg);
  }

  void setNewsList(List<GetNewsDetailModel> list) {
    _mNewsList=[];
    _mNewsList.addAll(list);
    showProgress(isLoading: false);
  }
}

class GetNewsDetailModel {
  late String? mAuthor;
  late String? mContent;
  late String? mDate;
  late String? mId;
  late String? mImageUrl;
  late String? mReadMoreUrl;
  late String? mTime;
  late String? mTitle;
  late String? mUrl;

  GetNewsDetailModel.fromJson(Map<String, dynamic> json) {
    mAuthor = json['author'];
    mContent = json['content'];
    mDate = json['date'];
    mId = json['id'];
    mImageUrl = json['imageUrl'];
    mReadMoreUrl = json['readMoreUrl'];
    mTime = json['time'];
    mTitle = json['title'];
    mUrl = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['author'] = mAuthor;
    data['content'] = mContent;
    data['date'] = mDate;
    data['id'] = mId;
    data['imageUrl'] = mImageUrl;
    data['readMoreUrl'] = mReadMoreUrl;
    data['time'] = mTime;
    data['title'] = mTitle;
    data['url'] = mUrl;
    return data;
  }
}
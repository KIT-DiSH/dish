import 'package:dish/models/TimelineUser.dart';

class PostModel {
  bool isTextExpanded;
  bool isCommentExpanded;
  int star;
  String image;
  User user;
  String shop;
  String discription;
  String tags;
  String map;

  PostModel({
    this.isTextExpanded: false,
    this.isCommentExpanded: false,
    required this.star,
    required this.image,
    required this.user,
    required this.shop,
    required this.discription,
    required this.tags,
    required this.map,
  });
}

List<PostModel> posts = [
  PostModel(
    star: 3,
    image: 'https://picsum.photos/600',
    user: User(
      id: 'aaa',
      name: 'kaito',
      imageUrl: 'https://picsum.photos/40',
    ),
    shop: '馬肉専門店　うまうま王国',
    discription: 'おいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそう',
    tags: '#馬うますぎて草 #有馬記念',
    map: 'https://amazom.com',
  ),
  PostModel(
    star: 4,
    image: 'https://picsum.photos/601',
    user: User(
      id: 'aaa',
      name: 'fuji',
      imageUrl: 'https://picsum.photos/41',
    ),
    shop: '羊肉専門店　メーメー王国',
    discription: 'おいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそうおいしそう',
    tags: '#羊うますぎて草 #有馬記念',
    map: 'https://amazom.com',
  ),
];
import 'package:dish/models/User.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PostModel {
  // 店全体のモデルを持っていても良い
  final String id, content, date, restName;
  final List<String> imageUrls;
  final User postUser;
  final List<String> favoUsers;
  final List<String> comments;
  final LatLng map;
  final Map<String, double> stars;

  PostModel({
    required this.id,
    required this.content,
    required this.date,
    required this.restName,
    required this.imageUrls,
    required this.postUser,
    required this.favoUsers,
    required this.comments,
    required this.map,
    required this.stars,
  });
}

List<PostModel> posts = [
  PostModel(
    id: '1',
    content: 'ここのパスタ本当においしかったです．お店の人も本当に優しくてまた行きたいです．おすすめ！',
    date: '10時間雨',
    restName: 'パスタ専門店　スイートバジル\n#うますぎて草 #エビがプリプリ',
    imageUrls: [
      'https://cdn.clipkit.co/tenants/381/item_images/images/000/250/399/large/ba4f9cce-5957-4e37-8222-0b45c271b524.jpg?1533820473',
      'https://d3bhdfps5qyllw.cloudfront.net/org/57/57fb3c11bb13ae10b47d540120fae536_1242x1242_w.jpg',
      'https://pbs.twimg.com/media/Er5nIQ5VkAAL-_t.jpg',
      'https://i.pinimg.com/originals/20/5a/40/205a40a988485af14a51dec63bd65462.jpg',
      'https://media-assets.aumo.jp/uploads/photo/upload_photo/data/101129/large_bb093bfd-a595-462d-a926-371690471cc0.jpeg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0qiRHm66XVULIf1CoIxqopOMZMZM6nObHIw&usqp=CAU',
    ],
    postUser: User(
      userId: 'aaa',
      userName: 'kaito',
      iconImageUrl: 'https://picsum.photos/40',
      profileText: '自己紹介．自己紹介．自己紹介',
      postCount: 6,
      followCount: 123,
      followerCount: 234,
    ),
    favoUsers: [],
    comments: [],
    map: LatLng(33.59119948029149, 130.4206489802915),
    stars: {
      "cost": 3,
      "mood": 2,
      "taste": 5,
    },
  ),
  PostModel(
    id: '1',
    content: 'ここのタンが一番美味しい．レモンで食べるのがおすすめ！あとドリンクも豊富で家族でもいける！',
    date: '2時間雨',
    restName: '肉屋　河本本店\n#ジューシー #焼肉',
    imageUrls: [
      'https://unseki.co.jp/blog/img/ichigo_isemiya04.jpg',
      'https://sasebo2.com/wp-content/uploads/2019/09/IMG_7683-1-e1568775186205.jpg',
      'https://static.retrip.jp/spot/4c2f837d-c649-4430-9048-18fb09bc19c4/images/df96934c-733f-4cfb-b189-77b3abdd4618_l.jpg',
      'https://www.hakata-kozuki.com/wp/wp-content/uploads/2020/02/motsunabe01.jpg',
      'https://tokubai-news-photo-production.tokubai.co.jp/c/f=jpg,u=0,w=1400/0c35/68f3/f277/fc44/eaca/6dfb/b1d8/9950/304447bbaad32173.jpg',
      'https://www.c-hisada1.com/wp-content/uploads/sp_main_002b.jpg',
    ],
    postUser: User(
      userId: 'aaa',
      userName: 'kaito',
      iconImageUrl: 'https://picsum.photos/40',
      profileText: '自己紹介．自己紹介．自己紹介',
      postCount: 10,
      followCount: 123,
      followerCount: 234,
    ),
    favoUsers: [],
    comments: [],
    map: LatLng(33.59017658029149, 130.4204201802915),
    stars: {
      "cost": 4,
      "mood": 5,
      "taste": 4,
    },
  ),
];

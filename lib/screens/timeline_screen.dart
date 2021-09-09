import 'package:dish/widgets/timeline_screen/insta_body.dart';
import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xFFF8FAF8),
    centerTitle: false,
    elevation: 1.0,
    title: SizedBox(
      height: 40.0,
      child: Image.asset('assets/images/Instagram_logo.png'),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: new Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black),
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage('https://picsum.photos/60'),
            ),
          ),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: InstaBody(),
    );
  }
}

// class ImagePost extends StatefulWidget {
//   const ImagePost(
//       {this.mediaUrl,
//       this.username,
//       this.location,
//       this.description,
//       this.likes,
//       this.postId,
//       this.ownerId});

//   factory ImagePost.fromDocument(document) {
//     return ImagePost(
//       username: 'kaito',
//       location: 'Iizuka',
//       mediaUrl: '',
//       likes: '',
//       description: 'ご飯美味しい',
//       postId: '1234',
//       ownerId: 'owner',
//     );
//   }

//   factory ImagePost.fromJSON(Map data) {
//     return ImagePost(
//       username: 'kaito',
//       location: 'Iizuka',
//       mediaUrl: '',
//       likes: '',
//       description: 'ご飯美味しい',
//       postId: '1234',
//       ownerId: 'owner',
//     );
//   }

//   int getLikeCount(var likes) {
//     if (likes == null) {
//       return 0;
//     }
// // issue is below
//     var vals = likes.values;
//     int count = 0;
//     for (var val in vals) {
//       if (val == true) {
//         count = count + 1;
//       }
//     }

//     return count;
//   }

//   final String mediaUrl;
//   final String username;
//   final String location;
//   final String description;
//   final likes;
//   final String postId;
//   final String ownerId;

//   _ImagePost createState() => _ImagePost(
//         mediaUrl: this.mediaUrl,
//         username: this.username,
//         location: this.location,
//         description: this.description,
//         likes: this.likes,
//         likeCount: getLikeCount(this.likes),
//         ownerId: this.ownerId,
//         postId: this.postId,
//       );
// }

// class _ImagePost extends State<ImagePost> {
//   final String mediaUrl;
//   final String username;
//   final String location;
//   final String description;
//   Map likes;
//   int likeCount;
//   final String postId;
//   bool liked;
//   final String ownerId;

//   bool showHeart = false;

//   TextStyle boldStyle = TextStyle(
//     color: Colors.black,
//     fontWeight: FontWeight.bold,
//   );

//   _ImagePost(
//       {this.mediaUrl,
//       this.username,
//       this.location,
//       this.description,
//       this.likes,
//       this.postId,
//       this.likeCount,
//       this.ownerId});

//   GestureDetector buildLikeIcon() {
//     Color color;
//     IconData icon;

//     if (liked) {
//       color = Colors.pink;
//       icon = FontAwesomeIcons.solidHeart;
//     } else {
//       icon = FontAwesomeIcons.heart;
//     }

//     return GestureDetector(
//         child: Icon(
//           icon,
//           size: 25.0,
//           color: color,
//         ),
//         onTap: () {
//           _likePost(postId);
//         });
//   }

//   GestureDetector buildLikeableImage() {
//     return GestureDetector(
//       onDoubleTap: () => _likePost(postId),
//       child: Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//           showHeart
//               ? Positioned(
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     child: Opacity(
//                       opacity: 0.85,
//                       // child: FlareActor(
//                       //   "assets/flare/Like.flr",
//                       //   animation: "Like",
//                       // ),
//                     ),
//                   ),
//                 )
//               : Container()
//         ],
//       ),
//     );
//   }

//   buildPostHeader({String ownerId}) {
//     if (ownerId == null) {
//       return Text("owner error");
//     }

//     return FutureBuilder(builder: (context, snapshot) {
//       if (snapshot.data != null) {
//         return ListTile(
//           leading: CircleAvatar(
//             backgroundColor: Colors.grey,
//           ),
//           title: GestureDetector(
//             child: Text('kaito', style: boldStyle),
//             onTap: () {},
//           ),
//           subtitle: Text(this.location),
//           trailing: const Icon(Icons.more_vert),
//         );
//       }

//       // snapshot data is null here
//       return Container();
//     });
//   }

//   Container loadingPlaceHolder = Container(
//     height: 400.0,
//     child: Center(child: CircularProgressIndicator()),
//   );

//   @override
//   Widget build(BuildContext context) {
//     liked = true;
//     // liked = (likes[googleSignIn.currentUser.id.toString()] == true);

//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         buildPostHeader(ownerId: ownerId),
//         buildLikeableImage(),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Padding(padding: const EdgeInsets.only(left: 20.0, top: 40.0)),
//             buildLikeIcon(),
//             Padding(padding: const EdgeInsets.only(right: 20.0)),
//             GestureDetector(
//                 child: const Icon(
//                   FontAwesomeIcons.comment,
//                   size: 25.0,
//                 ),
//                 onTap: () {
//                   goToComments(
//                       context: context,
//                       postId: postId,
//                       ownerId: ownerId,
//                       mediaUrl: mediaUrl);
//                 }),
//           ],
//         ),
//         Row(
//           children: <Widget>[
//             Container(
//               margin: const EdgeInsets.only(left: 20.0),
//               child: Text(
//                 "$likeCount likes",
//                 style: boldStyle,
//               ),
//             )
//           ],
//         ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Container(
//                 margin: const EdgeInsets.only(left: 20.0),
//                 child: Text(
//                   "$username ",
//                   style: boldStyle,
//                 )),
//             Expanded(child: Text(description)),
//           ],
//         )
//       ],
//     );
//   }

//   void _likePost(String postId2) {}

//   void addActivityFeedItem() {
//     print('追加');
//   }

//   void removeActivityFeedItem() {
//     print('削除');
//   }
// }

// class ImagePostFromId extends StatelessWidget {
//   final String id;

//   const ImagePostFromId({this.id});

//   getImagePost() async {
//     print('firebaseからの取得');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: getImagePost(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData)
//             return Container(
//                 alignment: FractionalOffset.center,
//                 padding: const EdgeInsets.only(top: 10.0),
//                 child: CircularProgressIndicator());
//           return snapshot.data;
//         });
//   }
// }

// void goToComments(
//     {BuildContext context, String postId, String ownerId, String mediaUrl}) {
//   Navigator.of(context)
//       .push(MaterialPageRoute<bool>(builder: (BuildContext context) {
//     return Container();
//   }));
// }
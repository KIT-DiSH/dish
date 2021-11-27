import 'package:dish/models/User.dart';
import 'package:flutter/material.dart';

import 'package:dish/configs/constant_colors.dart';

class UserCard extends StatefulWidget {
  UserCard({
    Key? key,
    required this.user,
    required this.isFollowed,
  }) : super(key: key);

  final User user;
  bool isFollowed;

  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  final _followedLabel = "フォロー中";
  final _notFollowedLabel = "フォロー";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28,
        vertical: 12,
      ),
      decoration: BoxDecoration(color: Color(0xFFFBFBFB)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColor.kPinkColor,
                width: 2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Image.network(
                widget.user.iconImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.user.userName,
                style: TextStyle(
                  color: AppColor.kPrimaryTextColor,
                  fontSize: 12,
                ),
              ),
              Text(
                widget.user.userId,
                style: TextStyle(
                  color: AppColor.kPrimaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          widget.isFollowed
              ? Container(
                  width: 88,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: AppColor.kDefaultBorderColor),
                  ),
                  child: TextButton(
                    child: Text(
                      _followedLabel,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColor.kPrimaryTextColor.withOpacity(0.7),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.black12,
                      backgroundColor: Color(0xFFF5F5F5),
                    ),
                    onPressed: () {
                      setState(() {
                        // フォロー解除処理
                        widget.isFollowed = false;
                      });
                    },
                  ),
                )
              : Container(
                  width: 88,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: TextButton(
                    child: Text(
                      _notFollowedLabel,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.black12,
                      backgroundColor: AppColor.kPinkColor,
                    ),
                    onPressed: () {
                      setState(() {
                        // フォロー処理
                        widget.isFollowed = true;
                      });
                    },
                  ),
                ),
        ],
      ),
    );
  }
}

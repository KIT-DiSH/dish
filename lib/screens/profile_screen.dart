import 'package:flutter/material.dart';

import 'package:dish/models/User.dart';
import 'package:dish/models/Post.dart';
import 'package:dish/configs/constant_colors.dart';
import 'package:dish/widgets/common/simple_divider.dart';
import 'package:dish/widgets/profile_screen/posts_field.dart';
import 'package:dish/widgets/profile_screen/profile_field.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          children: [
            const SizedBox(height: 24),
            ProfileField(user: testUser),
            const SizedBox(height: 24),
            SimpleDivider(),
            const SizedBox(height: 4),
            PostsField(user: testUser, posts: testPosts),
          ],
        ),
      ),
    );
  }

  PreferredSize _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          testUser.userId,
          style: TextStyle(
            color: AppColor.kPrimaryTextColor,
            fontSize: 16,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.more_horiz,
              color: AppColor.kPrimaryTextColor,
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
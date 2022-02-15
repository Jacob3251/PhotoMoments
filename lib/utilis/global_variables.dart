import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add_post_screen.dart';
import 'package:flutter_application_1/screens/feed_screen.dart';

const webScreenSize = 600;
List<Widget> homeScreenItems = [
  FeedScreen(),
  Center(
    child: Text('Search'),
  ),
  // ignore: unnecessary_const
  AddPostScreen(),
  Center(
    child: Text('notifications'),
  ),
  Center(
    child: Text('profile'),
  ),
];

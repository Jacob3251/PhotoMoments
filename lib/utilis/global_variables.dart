import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add_post_screen.dart';
import 'package:flutter_application_1/screens/feed_screen.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';
import 'package:flutter_application_1/screens/search_screen.dart';

const webScreenSize = 600;
List<Widget> homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  // ignore: unnecessary_const
  AddPostScreen(),
  Center(
    child: Text('notifications'),
  ),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/colors.dart';
import 'package:flutter_application_1/utilis/global_variables.dart';
import 'package:flutter_application_1/widgets/post_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MediaQuery.of(context).size.width > webScreenSize
          ? webBackgroundColor
          : mobileBackgroundColor,
      appBar: MediaQuery.of(context).size.width > webScreenSize
          ? null
          : AppBar(
              backgroundColor: mobileBackgroundColor,
              title: SvgPicture.asset(
                'assets/logo.svg',
                color: primaryColor,
                height: 32,
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.message))
              ],
              //Here Messenger is optional dont use unless firebase chat is configured
            ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.45),
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.all(15),
                  child: PostCard(snap: snapshot.data!.docs[index].data())));
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:newsapp/backend/functions.dart';
import 'package:newsapp/components/appbar.dart';
import 'package:newsapp/components/newsbox.dart';
import 'package:newsapp/components/searchbar.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:newsapp/utils/constants.dart';
import 'package:newsapp/utils/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List> news;

  @override
  void initState() {
    super.initState();
    news = fetchnews();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: CustomAppBar(),
        body: Column(
          children: [
            Search(),
            Expanded(
                child: FutureBuilder<List>(
              future: fetchnews(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(itemBuilder: ((context, index) {
                    return NewsBox(
                      url: snapshot.data![index]['url'],
                      imageurl: snapshot.data![index]['urlToImage'] != null
                          ? snapshot.data![index]['urlToImage']
                          : Constants.imageurl,
                      title: snapshot.data![index]['title'],
                      time: snapshot.data![index]['publishedAt'],
                      description:
                          snapshot.data![index]['description'].toString(),
                    );
                  }));
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                );
              },
            ))
          ],
        ));
  }
}

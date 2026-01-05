import 'package:e_fast/screen/news/component/news_container.dart';
import 'package:e_fast/screen/utils/utils.dart';
import 'package:e_fast/screen/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'All News', fontSize: 18),
      body: ListView.builder(
        padding: Utils.symmetric(v: 10.0),

        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: Utils.only(bottom: 14.0),
            child: NewsContainer(),
          );
        },
      ),
    );
  }
}

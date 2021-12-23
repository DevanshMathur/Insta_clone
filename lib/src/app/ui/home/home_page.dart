import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/home/widgets/custom_app_bar.dart';
import 'package:insta_clone/src/app/ui/home/widgets/post_widget.dart';
import 'package:insta_clone/src/app/ui/home/widgets/status_widget.dart';
import 'package:insta_clone/src/utils/create_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          40.0,
        ),
        child: const CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 81,
              // decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: CreateData.statusList.length,
                itemBuilder: (context, position) =>
                    StatusWidget(CreateData.statusList[position]),
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: CreateData.postList.length,
              itemBuilder: (context, position) =>
                  PostWidget(CreateData.postList[position]),
            ),
          ],
        ),
      ),
    );
  }

}

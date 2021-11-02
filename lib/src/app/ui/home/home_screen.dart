import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/home/post_widget.dart';

import './status_widget.dart';
import './../../../utils/create_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CreateData.createStatus();
    CreateData.createPost(1, 1, 1);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        title: Text(
          "Instagram",
          style: Theme.of(context).textTheme.headline1,
        ),
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

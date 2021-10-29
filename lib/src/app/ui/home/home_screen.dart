import 'package:flutter/material.dart';

import './status_widget.dart';
import './../../../utils/status_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StatusData.createStatus();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        title: Text(
          "Instagram",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 30,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: 81,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: StatusData.statusList.length,
                itemBuilder: (context, position) =>
                    StatusWidget(StatusData.statusList[position]),
              ),
            ),
            Expanded(
              child: Container(
                decoration:                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: ListView.builder(
                  itemCount: StatusData.statusList.length,
                  itemBuilder: (context, position) =>
                      StatusWidget(StatusData.statusList[position]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

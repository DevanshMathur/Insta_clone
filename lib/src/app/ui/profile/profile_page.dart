import 'package:flutter/material.dart';
import 'package:insta_clone/src/app/ui/widgets/circular_image_widget.dart';
import 'package:insta_clone/src/utils/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Constant.profileLock
            ? const Icon(Icons.lock_outlined)
            : const Icon(Icons.lock_open_outlined),
        title: Text(Constant.userName),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add_circle_outline_outlined),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu_outlined),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // decoration:
            //     BoxDecoration(border: Border.all(color: Colors.black)),
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularImageWidget(Constant.userProfile, 80),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Constant.posts.toString(),
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          "Posts",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Constant.followers.toString(),
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          "Followers",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Constant.following.toString(),
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          "Following",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              Constant.name,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              Constant.description,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Edit Profile"),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.expand_more_outlined),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Story Highlights",
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  "Keep your favorite stories on your profile",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, pos) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.black38
                            : Colors.white38,
                        // border: Border.all(color: Colors.black),
                        shape: BoxShape.circle),
                    child:
                        pos == 0 ? const Icon(Icons.add_outlined) : Container(),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              width: MediaQuery.of(context).size.width,
              child: DefaultTabController(
                length: 4,
                child: Scaffold(
                  appBar: AppBar(
                    toolbarHeight: 1,
                    bottom: const TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.grid_on_outlined)),
                        Tab(icon: Icon(Icons.movie_outlined)),
                        Tab(icon: Icon(Icons.play_arrow)),
                        Tab(icon: Icon(Icons.contacts_outlined)),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      Center(
                        child: Text("No post yet",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Center(
                        child: Text("No post yet",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Center(
                        child: Text("No post yet",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      Center(
                        child: Text("No post yet",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

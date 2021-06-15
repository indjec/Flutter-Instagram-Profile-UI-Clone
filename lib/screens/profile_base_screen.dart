import 'package:flutter/material.dart';
import 'package:instagram_profile_page/screens/gallery_screen.dart';
import 'package:instagram_profile_page/screens/igtv_screen.dart';
import 'package:instagram_profile_page/screens/reels_screen.dart';
import 'package:instagram_profile_page/widgets/profile_header_widget.dart';

class ProfileBaseScreen extends StatefulWidget {
  @override
  _ProfileBaseScreenState createState() => _ProfileBaseScreenState();
}

class _ProfileBaseScreenState extends State<ProfileBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[200],
              ),
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "john.doe",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            centerTitle: false,
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                ),
                onPressed: () => print("Add"),
              ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () => print("Add"),
              )
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    profileHeaderWidget(context),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorWeight: 1,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.grid_on_sharp,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Image.asset(
                        'assets/icons/igtv.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Tab(
                      icon: Image.asset(
                        'assets/icons/reels.png',
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Gallery(),
                    Igtv(),
                    Reels(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

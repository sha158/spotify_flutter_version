import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_ui/constant.dart';
import 'package:flutter_spotify_ui/widgets/library_play_list.dart';
import 'package:flutter_spotify_ui/widgets/sidemenuicon.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset(
                  'assets/spotify_logo.png',
                  height: 55,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ],
          ),
          SideMenuIcon(
            iconData: Icons.home,
            title: 'Home',
            ontap: (){},
          ),
          SideMenuIcon(
            iconData: Icons.search,
            title: 'Search',
            ontap: (){},
          ),
          SideMenuIcon(
            iconData: Icons.audiotrack,
            title: 'Radio',
            ontap: (){},
          ),
          const SizedBox(height: 10,),
          LibraryPlayList()
        ],
      ),
    );
  }
}


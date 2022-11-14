import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_ui/constant.dart';
import 'package:flutter_spotify_ui/data/data.dart';

class LibraryPlayList extends StatefulWidget {
  const LibraryPlayList({Key? key}) : super(key: key);

  @override
  State<LibraryPlayList> createState() => _LibraryPlayListState();
}

class _LibraryPlayListState extends State<LibraryPlayList> {
  ScrollController? scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawScrollbar(
        
        thumbColor: Colors.grey.shade400,

        thumbVisibility: true,
        controller: scrollController,
        child: ListView(
          controller: scrollController,
          padding: EdgeInsets.symmetric(vertical: 12),
          physics: ClampingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'YOUR LIBRARY',
                    style: headline4,
                  ),
                ),
                ...yourLibrary
                    .map((e) => ListTile(
                          dense: true,
                          title: Text(
                            e,
                            style: bodytext2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () {},
                        ))
                    .toList()
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'PLAYLISTS',
                    style: headline4,
                  ),
                ),
                ...playlists
                    .map((e) => ListTile(
                          dense: true,
                          title: Text(
                            e,
                            style: bodytext2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () {},
                        ))
                    .toList()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

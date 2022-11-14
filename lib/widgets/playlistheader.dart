import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_ui/constant.dart';
import 'package:flutter_spotify_ui/data/data.dart';

class PlayListHeader extends StatelessWidget {
  final Playlist playlist;
  const PlayListHeader({required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(playlist.imageURL,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
            ),
            const SizedBox(width: 16,),
            Expanded(child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PLAYLIST',style:  TextStyle(fontSize: 12,color: Colors.white)),
                const SizedBox(height: 12,),
                Text(playlist.name,style: headline2,),
                const SizedBox(height: 16,),
                Text(playlist.description,style: TextStyle(fontSize: 14,color: Colors.white)),
                const SizedBox(height: 16,),
                Text(
                        'Created by ${playlist.creator} • ${playlist.songs.length} songs, ${playlist.duration}',
                        style: TextStyle(fontSize: 14,color: Colors.white),
                      ),
                      

                





              ],

            ),),

          ],
        ),
        const SizedBox(height: 20.0),
                  _PlaylistButtons(followers: playlist.followers)
      ],
    );
  }
}


class _PlaylistButtons extends StatelessWidget {
  final String followers;

  const _PlaylistButtons({
    Key? key,
    required this.followers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
          
            
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 48.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            backgroundColor: Colors.green.shade800,
            primary: Colors.white,
            textStyle: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 12.0, letterSpacing: 2.0),
          ),
          onPressed: () {},
          child: const Text('PLAY'),

        ),
        const SizedBox(width: 8.0),
        IconButton(
          icon: const Icon(Icons.favorite_border,color: Colors.white,),
          iconSize: 30.0,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz,color: Colors.white,),
          iconSize: 30.0,
          onPressed: () {},
        ),
        const Spacer(),
        Text(
          'FOLLOWERS\n$followers',
          style: TextStyle(fontSize: 14,color: Colors.white),
          textAlign: TextAlign.right,
        )
      ],
    );
  }
}

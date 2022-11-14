import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constant.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spotify_ui/data/data.dart';

import '../models/selection.dart';

class TracksList extends StatelessWidget {
  final List<Song> tracks;

  const TracksList({
    Key? key,
    required this.tracks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(

      headingTextStyle:
          Theme.of(context).textTheme.overline!.copyWith(fontSize: 12.0),
      dataRowHeight: 54.0,
      showCheckboxColumn: false,
      columns:  [
        DataColumn(label: Text('TITLE',style: normal),),
        DataColumn(label: Text('ARTIST',style: normal,)),
        DataColumn(label: Text('ALBUM',style: normal,)),
        DataColumn(label: Icon(Icons.access_time,size:30,color: Colors.white,)),
      ],
      rows: tracks.map((e) {
        final selected =
            context.watch<CurrentTrackModel>().selected?.id == e.id;
        final textStyle = TextStyle(
          color: selected
              ? Colors.green
              : Colors.white,
        );
        return DataRow(
        
         
          cells: [
            DataCell(
              
              Text(e.title, style: textStyle),
            ),
            DataCell(
              Text(e.artist, style: textStyle),
            ),
            DataCell(
              Text(e.album, style: textStyle),
            ),
            DataCell(
              Text(e.duration, style: textStyle),
            ),
          ],
          selected: selected,
          onSelectChanged: (_) =>
              context.read<CurrentTrackModel>().selectTrack(e),
        );
      }).toList(),
    );
  }
}
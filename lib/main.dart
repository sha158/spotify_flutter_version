import 'dart:html';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/models/selection.dart';
import 'package:flutter_spotify_ui/widgets/currenttrack.dart';
import 'package:flutter_spotify_ui/widgets/demo.dart';
import 'package:flutter_spotify_ui/widgets/playlistscreen.dart';
import 'package:flutter_spotify_ui/widgets/sidemenu.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main(){
  
  // await DesktopWindow.setMinWindowSize(Size(600, 800));
  runApp(ChangeNotifierProvider(
    create: (context) => CurrentTrackModel(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      builder: (context, child) => ResponsiveWrapper.builder(child,minWidth: 480),
      
      title: 'Flutter Spotify UI',
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xFF121212),
        backgroundColor: const Color(0xFF121212),
        primaryColor: Colors.black,
        accentColor: const Color(0xFF1DB954),
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline2: const TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontSize: 12.0,
            color: Colors.grey[300],
            fontWeight: FontWeight.w500,
            letterSpacing: 2.0,
          ),
          bodyText1: TextStyle(
            color: Colors.grey[300],
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
          bodyText2: TextStyle(
            color: Colors.grey[300],
            letterSpacing: 1.0,
          ),
        ),
      ),
      
      home: Shell(),
    );
  }
}

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              SideMenu(),
              Expanded(child: PlayListScreen(playlist: lofihiphopPlaylist)),
            ],
          )),
          CurrentTrack()
        ],
      ),
    );
  }
}

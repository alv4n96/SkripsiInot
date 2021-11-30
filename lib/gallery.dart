import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skripsi_toni/mainScreen.dart';
import 'package:skripsi_toni/widget.dart';

class galleryApp extends StatefulWidget {
  @override
  galleryAppState createState() => galleryAppState();
}

class galleryAppState extends State<galleryApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.blue,
            leading: IconButton(
              onPressed: () {
                //right way: use context in below level tree with MaterialApp
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              ),
            ),
          ),
          body: Container(
            child: TabBarView(
              children: <Widget>[
                homeTopTabs(),
                homeTopTabs(),
              ],
            ),
          )),
    );
  }

  homeTopTabs() {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.white,
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 8.0,
            indicatorColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.photo_library_outlined,
                  color: Colors.blue,
                ),
                child: Text(
                  'Photos',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.video_collection,
                  color: Colors.blue,
                ),
                child: Text(
                  'Video',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              height: 250,
              child: ListView(
                children: [
                  PictBuilder(
                    image: 'src/img/gallery/1.jpg',
                    label: 'Benito Mussolini (kiri) dan Adolf Hitler (kanan)',
                  ),
                  PictBuilder(
                    image: 'src/img/gallery/2.jpg',
                    label: 'Reruntuhan Guernica setelah dibom.',
                  ),
                  PictBuilder(
                    image: 'src/img/gallery/3.jpg',
                    label:
                        'Sarang senjata mesin Cina pada Pertempuran Shanghai, 1937.',
                  ),
                  PictBuilder(
                    image: 'src/img/gallery/4.jpg',
                    label:
                        'Tentara Jerman di Arc de Triomphe, Paris, setelah kejatuhan Perancis tahun 1940.',
                  ),
                  PictBuilder(
                    image: 'src/img/gallery/5.jpg',
                    label:
                        'Infanteri dan yang dikendarai lapis baja Jerman melawan pasukan Soviet di jalanan Kharkov, Oktober 1941.',
                  ),
                  PictBuilder(
                    image: 'src/img/gallery/6.jpg',
                    label:
                        'Serangan balasan Soviet pada pertempuran Moskwa, Desember 1941.',
                  ),
                  PictBuilder(
                    image: 'src/img/gallery/7.jpg',
                    label:
                        'Perdana Menteri Winston Churchill memberi tanda "Victory" untuk kerumunan di London pada Hari Kemenangan di Eropa',
                  ),
                ],
              ),
            ),

            // BATAS
            Container(
              child: Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}

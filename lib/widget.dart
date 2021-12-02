import 'package:flutter/material.dart';
import 'package:skripsi_toni/user_page.dart';
import 'package:skripsi_toni/KIKD.dart';
import 'package:skripsi_toni/bibliography.dart';
import 'package:skripsi_toni/gallery.dart';
import 'package:skripsi_toni/instructionScreen.dart';
import 'package:skripsi_toni/materiScreen.dart';

class MenuButton extends StatelessWidget {
  final double screenWidth;
  final String label;
  final Widget targetScene;

  const MenuButton({
    Key key,
    @required this.screenWidth,
    @required this.label,
    @required this.targetScene,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: SizedBox(
        width: this.screenWidth,
        height: 80,
        child: ElevatedButton(
          onPressed: () {
            //right way: use context in below level tree with MaterialApp
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => this.targetScene));
          },
          child: Text(
            this.label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Jaapokki',
              letterSpacing: 5,
              color: Colors.lightBlue.shade900,
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade400,
              side: BorderSide(
                width: 3,
                color: Colors.blue.shade900,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
        ),
      ),
    );
  }
}

class MateriButton extends StatelessWidget {
  final double screenWidth;
  final String label;
  final Widget targetScene;

  const MateriButton({
    Key key,
    @required this.screenWidth,
    @required this.label,
    @required this.targetScene,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: SizedBox(
        width: this.screenWidth,
        height: 85,
        child: ElevatedButton(
          onPressed: () {
            //right way: use context in below level tree with MaterialApp
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => this.targetScene));
          },
          child: Text(
            this.label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Jaapokki',
              letterSpacing: 3,
              color: Colors.lightBlue.shade900,
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade400,
              side: BorderSide(
                width: 3,
                color: Colors.blue.shade900,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
        ),
      ),
    );
  }
}

class TabTitle extends StatelessWidget {
  final String title;
  const TabTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        margin: EdgeInsets.only(right: 35),
        child: Text(
          this.title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class RoundedRectangleTabIndicator extends Decoration {
  final BoxPainter _painter;

  RoundedRectangleTabIndicator(
      {@required Color color, @required double weight, @required double width})
      : _painter = _RRectanglePainterColor(color, weight, width);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _RRectanglePainterColor extends BoxPainter {
  final Paint _paint;
  final double weight;
  final double width;

  _RRectanglePainterColor(Color color, this.weight, this.width)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset customOffset = offset + Offset(0, cfg.size.height - weight);

    //Custom Rectangle
    Rect myRect = customOffset & Size(width, weight);

    // Custom Rounded Rectangle
    RRect myRRect = RRect.fromRectXY(myRect, weight, weight);

    canvas.drawRRect(myRRect, _paint);
  }
}

class BuildText extends StatelessWidget {
  final String theText;

  const BuildText({
    Key key,
    @required this.theText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenWidht = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 5),
          child: Container(
            child: Column(children: <Widget>[
              Container(
                width: screenWidht / 0.8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    this.theText,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}

class PictBuilder extends StatelessWidget {
  final String image;
  final String label;

  const PictBuilder({
    Key key,
    @required this.image,
    @required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        // width: 250,
        // height: 350,
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset(
                      this.image,
                      height: 250,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        this.label,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Jaapokki',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("x"),
        Text("data"),
        Text("data"),
        Text("data"),
        Text("data"),
      ],
    );
  }
}

// EXTENSIONS DRAWER

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = '''Anthony Fucking 
Fauzan''';
    final email = '''Pendidikan Sejarah 2015''';
    final urlImage = 'src/img/toni.jpg';

    return Drawer(
      child: Material(
        // color: Color.fromRGBO(50, 75, 205, 1),
        color: Colors.blue[900],
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: '''Anthony Fakin fauzan''',
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  // const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  // const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Petunjuk penggunaan',
                    icon: Icons.linear_scale_outlined,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'KI / KD',
                    icon: Icons.linear_scale_outlined,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Materi',
                    icon: Icons.linear_scale_outlined,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Galeri',
                    icon: Icons.linear_scale_outlined,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Daftar Pustaka',
                    icon: Icons.linear_scale_outlined,
                    onClicked: () => selectedItem(context, 4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    @required String urlImage,
    @required String name,
    @required String email,
    @required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 40, backgroundImage: AssetImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  // const SizedBox(height: 4),
                  Divider(
                    color: Colors.white,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    @required String text,
    @required IconData icon,
    @required VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => InstructionPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => KIKDApp(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => materiScreen(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => galleryApp(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => bibliography(),
        ));
        break;
    }
  }
}

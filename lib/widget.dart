import 'package:flutter/material.dart';

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

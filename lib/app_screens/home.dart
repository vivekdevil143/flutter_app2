import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            //   width: 200.0,
            //  height: 200.0,
            //margin: EdgeInsets.only(right:15.0,top: 15.0),
            //padding: EdgeInsets.all(15.0),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Spice jet",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  )),
                  Expanded(
                      child: Text(
                    "From mumbai to delhi",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Airindia jet",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  )),
                  Expanded(
                      child: Text(
                    "From paris to delhi",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  )),
                ],
              ),
              FlightImageAsset(),
              FlightBookRaisedButton()
            ])));
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/download.png');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    return Container(child: image);
  }
}

class FlightBookRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Book Your Flight",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontFamily: 'Raleway',
            ),
          ),
          elevation: 6.0,
          onPressed: () => BookFlight(context)),
    );
  }

  void BookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Book Successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(context: context, builder: (BuildContext context) => alertDialog);
  }
}

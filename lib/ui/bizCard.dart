import 'package:flutter/material.dart';

class MaterialBizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BizCard(),
    );
  }
}

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade100,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getCard(), _getUserAvatar()],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      decoration: BoxDecoration(
          color: Colors.redAccent.shade100,
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Bhargavi Devi Yamanuri",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "bhargavi@makershive.io",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Text("bhargavi@twitter.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _getUserAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.redAccent, width: 1),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/200"))),
    );
  }
}

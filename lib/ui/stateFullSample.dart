import 'package:flutter/material.dart';

class MaterialQuote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Quotes(),
    );
  }
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  var quoteIndex = 0;
  var quotes = [
    "1.The Way Get Started Is To Quit Talking And Begin Doing.",
    "2.The Pessimist Sees Difficulty In Every Opportunity. The Optimist Sees Opportunity In Every Difficulty.",
    "3.Don’t Let Yesterday Take Up Too Much Of Today.",
    "4.You Learn More From Failure Than From Success. Don’t Let It Stop You. Failure Builds Character.",
    "5.It’s Not Whether You Get Knocked Down, It’s Whether You Get Up.",
    "6.If You Are Working On Something That You Really Care About, You Don’t Have To Be Pushed. The Vision Pulls You.",
    "7.People Who Are Crazy Enough To Think They Can Change The World, Are The Ones Who Do.",
    "8.Failure Will Never Overtake Me If My Determination To Succeed Is Strong Enough.",
    "9.Entrepreneurs Are Great At Dealing With Uncertainty And Also Very Good At Minimizing Risk. That’s The Classic Entrepreneur.",
    "10.We May Encounter Many Defeats But We Must Not Be Defeated.",
    "11.Knowing Is Not Enough; We Must Apply. Wishing Is Not Enough; We Must Do."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text("Life Inspire Quotes"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                width: 350,
                margin: EdgeInsets.all(30),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    quotes[quoteIndex],
                    style: TextStyle(
                        color: Colors.blueGrey.shade700,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.green.shade700,
                  icon: Icon(
                    Icons.all_inclusive,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Inspire Quote",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  _showQuote() {
    setState(() {
      if (quoteIndex < quotes.length - 1) {
        quoteIndex += 1;
      } else {
        quoteIndex = 0;
      }
    });
  }
}

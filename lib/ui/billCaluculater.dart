import 'package:flutter/material.dart';

class MaterialBillCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BillCalculator(),
    );
  }
}

class BillCalculator extends StatefulWidget {
  @override
  _BillCalculatorState createState() => _BillCalculatorState();
}

class _BillCalculatorState extends State<BillCalculator> {
  double _billAmount = 0.0;
  int _noOfPersons = 1;
  int _tipPercentage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(top: 100),
              decoration: _getContainerDecoration(),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 20),
                    child: Text(
                      "Total per person",
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Colors.black54),
                    ),
                  ),
                  Text(
                    "₹ ${calculatePersonAmount(_billAmount, _noOfPersons, _tipPercentage).toStringAsFixed(2)}",
                    //"\$ 123",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.pinkAccent.shade200),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.black54,
                      width: 1,
                      style: BorderStyle.solid)),
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            prefix: Text("₹ Bill Amount ")),
                        onChanged: (String moneyValue) {
                          try {
                            _billAmount = double.parse(moneyValue);
                          } catch (exception) {
                            _billAmount = 0;
                          }
                        },
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Split",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_noOfPersons > 1) {
                                  _noOfPersons--;
                                }
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: _getContainerDecoration(),
                              margin: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "$_noOfPersons",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _noOfPersons++;
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: _getContainerDecoration(),
                              margin: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Tip",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "₹ ${calculateTipAmount(_billAmount, _noOfPersons, _tipPercentage).toStringAsFixed(2)}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.pinkAccent.shade200),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "${_tipPercentage.toString()}%",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.pinkAccent.shade200),
                  ),
                  Slider(
                      min: 0,
                      max: 100,
                      inactiveColor: Colors.grey,
                      divisions: 10,
                      activeColor: Colors.pinkAccent.shade200,
                      value: _tipPercentage.toDouble(),
                      onChanged: (double tipValue) {
                        setState(() {
                          _tipPercentage = tipValue.round();
                        });
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _getContainerDecoration() {
    return BoxDecoration(
        color: Colors.purple.shade100, borderRadius: BorderRadius.circular(12));
  }

  calculateTipAmount(double billAmount, int noOfPersons, int tipPercentage) {
    double totalTip = 0.0;
    if (billAmount < 0 || billAmount.toString().isEmpty || billAmount == null) {
    } else {
      totalTip = (billAmount * tipPercentage) / 100;
    }
    return totalTip;
  }

  calculatePersonAmount(double billAmount, int noOfPersons, int tipPercentage) {
    return (calculateTipAmount(billAmount, noOfPersons, tipPercentage) +
            billAmount) /
        noOfPersons;
  }
}

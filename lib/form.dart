import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts/homepage.dart';

class Input {
  String br1,
      br2,
      br3,
      br4,
      br5,
      br6,
      br7,
      br8,
      br9,
      pr1,
      pr2,
      pr3,
      pr4,
      pr5,
      pr6,
      lr1,
      lr2,
      lr3,
      lr4,
      lr5,
      lr6,
      lr7,
      lr8,
      lr9,
      lr10,
      lr11,
      lr12,
      lr13,
      lr14,
      lr15,
      lr16,
      lr17,
      lr18;

  Input({
    this.br1,
    this.br2,
    this.br3,
    this.br4,
    this.br5,
    this.br6,
    this.br7,
    this.br8,
    this.br9,
    this.pr1,
    this.pr2,
    this.pr3,
    this.pr4,
    this.pr5,
    this.pr6,
    this.lr1,
    this.lr2,
    this.lr3,
    this.lr4,
    this.lr5,
    this.lr6,
    this.lr7,
    this.lr8,
    this.lr9,
    this.lr10,
    this.lr11,
    this.lr12,
    this.lr13,
    this.lr14,
    this.lr15,
    this.lr16,
    this.lr17,
    this.lr18,
  });
}

class FormMi extends StatefulWidget {
  @override
  _FormMiState createState() => _FormMiState();
}

class _FormMiState extends State<FormMi> {
  var _b1 = TextEditingController();
  var _b2 = TextEditingController();
  var _b3 = TextEditingController();
  var _b4 = TextEditingController();
  var _b5 = TextEditingController();
  var _b6 = TextEditingController();
  var _b7 = TextEditingController();
  var _b8 = TextEditingController();
  var _b9 = TextEditingController();
  var _p1 = TextEditingController();
  var _p2 = TextEditingController();
  var _p3 = TextEditingController();
  var _p4 = TextEditingController();
  var _p5 = TextEditingController();
  var _p6 = TextEditingController();
  var _l1 = TextEditingController();
  var _l2 = TextEditingController();
  var _l3 = TextEditingController();
  var _l4 = TextEditingController();
  var _l5 = TextEditingController();
  var _l6 = TextEditingController();
  var _l7 = TextEditingController();
  var _l8 = TextEditingController();
  var _l9 = TextEditingController();
  var _l10 = TextEditingController();
  var _l11 = TextEditingController();
  var _l12 = TextEditingController();
  var _l13 = TextEditingController();
  var _l14 = TextEditingController();
  var _l15 = TextEditingController();
  var _l16 = TextEditingController();
  var _l17 = TextEditingController();
  var _l18 = TextEditingController();

  field(String tx, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        decoration:
            InputDecoration(hintText: tx, contentPadding: EdgeInsets.all(8.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          "Data Input Page",
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14.0),

            //bar chart
            child: Text(
              "Bar Chart Data Input Section",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Bar 1",
            style: TextStyle(
              fontSize: 18.0,fontWeight: FontWeight.bold,
            ),
          ),
          field("Red bar", _b1),
          field("Greeen bar", _b2),
          field("Blue bar", _b3),

          Text(
            "Bar 2",
            style: TextStyle(
              fontSize: 18.0,fontWeight: FontWeight.bold,
            ),
          ),
          field("Red bar", _b4),
          field("Greeen bar", _b5),
          field("Blue bar", _b6),
          Text(
            "Bar 3",
            style: TextStyle(
              fontSize: 18.0,fontWeight: FontWeight.bold,
            ),
          ),
          field("Red bar", _b7),
          field("Greeen bar", _b8),
          field("Blue bar", _b9),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                "Pie Chart Data Input Section",
                style: TextStyle(
                  fontSize: 18.0,fontWeight: FontWeight.bold,
                ),
              ),
            ),
            field("First Input", _p1),
            field("Second Input", _p2),
            field("Third Input", _p3),
            field("Fourth Input", _p4),
            field("Fifth Input", _p5),
            field("Sixth Input", _p6),
            Text(
              "Line Chart Data Input Section",
              style: TextStyle(
                fontSize: 18.0,fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Line  1",
              style: TextStyle(
                fontSize: 18.0,fontWeight: FontWeight.bold,
              ),
            ),
            field("First Input", _l1),
            field("Second Input", _l2),
            field("Third Input", _l3),
            field("Fourth  Input", _l4),
            field("Fifth Input", _l5),
            field("Sixth Input", _l6),
            Text(
              "Line  2",
              style: TextStyle(
                fontSize: 18.0,fontWeight: FontWeight.bold,
              ),
            ),
            field("First Input", _l7),
            field("Second Input", _l8),
            field("Third Input", _l9),
            field("Fourth  Input", _l10),
            field("Fifth Input", _l11),
            field("Sixth Input", _l12),
            Text(
              "Line  3",
              style: TextStyle(
                fontSize: 18.0,fontWeight: FontWeight.bold,
              ),
            ),
            field("First Input", _l13),
            field("Second Input", _l14),
            field("Third Input", _l15),
            field("Fourth  Input", _l16),
            field("Fifth Input", _l17),
            field("Sixth Input", _l18),
          RaisedButton(
            color: Colors.green,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return HomePage(
                    value: Input(
                      br1: _b1.text,
                      br2: _b2.text,
                      br3: _b3.text,
                      br4: _b4.text,
                      br5: _b5.text,
                      br6: _b6.text,
                      br7: _b7.text,
                      br8: _b8.text,
                      br9: _b9.text,
                      pr1: _p1.text,
                      pr2: _p3.text,
                      pr3: _p3.text,
                      pr4: _p4.text,
                      pr5: _p5.text,
                      pr6: _p6.text,
                      lr1: _l1.text,
                      lr2: _l2.text,
                      lr3: _l3.text,
                      lr4: _l4.text,
                      lr5: _l5.text,
                      lr6: _l6.text,
                      lr7: _l7.text,
                      lr8: _l8.text,
                      lr9: _l9.text,
                      lr10: _l10.text,
                      lr11: _l11.text,
                      lr12: _l12.text,
                      lr13: _l13.text,
                      lr14: _l14.text,
                      lr15: _l15.text,
                      lr16: _l16.text,
                      lr17: _l17.text,
                      lr18: _l18.text,
                    ),
                  );
                }),
              );
            },
            child: Text(
              "SUBMIT",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],

      ),
    );
  }
}

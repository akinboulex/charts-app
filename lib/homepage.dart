import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts/form.dart';

class HomePage extends StatefulWidget {
  //final Widget child;
  final Input value;
  HomePage({Key key,this.value}):super(key:key);

 // HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Pollution, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;

//  String get quantity => quantity;
//
//  String get taskvalue => taskvalue;
//
//  String get salesval => salesval;

  _generateData() {
    var data1 = [
      new Pollution(1980, 'Osogbo', double.parse(widget.value.br1)),
      new Pollution(1980, 'Ede', double.parse(widget.value.br2)),
      new Pollution(1980, 'Ilesa', double.parse(widget.value.br1)),
    ];
    var data2 = [
      new Pollution(1985, 'Osogbo', double.parse(widget.value.br4)),
      new Pollution(1980, 'Ede', double.parse(widget.value.br5)),
      new Pollution(1985, 'Ilesa', double.parse(widget.value.br6)),
    ];
    var data3 = [
      new Pollution(1985, 'Osogbo', double.parse(widget.value.br7)),
      new Pollution(1980, 'Ede', double.parse(widget.value.br8)),
      new Pollution(1985, 'Ilesa', double.parse(widget.value.br9)),
    ];

    var piedata = [
      new Task('Coding', double.parse(widget.value.pr1), Color(0xff6959CD)),
      new Task('Eat', double.parse(widget.value.pr2), Color(0xff36648B)),
      new Task('Transport', double.parse(widget.value.pr3), Color(0xff42426F)),
      new Task('TV', double.parse(widget.value.pr4), Color(0xffCD3333)),
      new Task('Sleep', double.parse(widget.value.pr5), Color(0xffEE7621)),
      new Task('Others', double.parse(widget.value.pr6), Color(0xffD19275)),
    ];

    var linesalesdata = [
      new Sales(0, double.parse(widget.value.lr1)),
      new Sales(1, double.parse(widget.value.lr2)),
      new Sales(2, double.parse(widget.value.lr3)),
      new Sales(3, double.parse(widget.value.lr4)),
      new Sales(4, double.parse(widget.value.lr5)),
      new Sales(5, double.parse(widget.value.lr6)),
    ];
    var linesalesdata1 = [
      new Sales(0, double.parse(widget.value.lr7)),
      new Sales(1, double.parse(widget.value.lr8)),
      new Sales(2, double.parse(widget.value.lr9)),
      new Sales(3, double.parse(widget.value.lr10)),
      new Sales(4, double.parse(widget.value.lr11)),
      new Sales(5, double.parse(widget.value.lr12)),
    ];

    var linesalesdata2 = [
      new Sales(0, double.parse(widget.value.lr13)),
      new Sales(1,double.parse(widget.value.lr14)),
      new Sales(2, double.parse(widget.value.lr15)),
      new Sales(3, double.parse(widget.value.lr16)),
      new Sales(4, double.parse(widget.value.lr17)),
      new Sales(5, double.parse(widget.value.lr18)),
    ];


// var  d =double.parse(quantity);
    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.d,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffFF4040)),
      ),
    );

    //var f = double.parse(salesval);
    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.d,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff006400)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.d,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff1874CD)),
      ),
    );
//var e = double.parse(taskvalue);
    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.e,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffFFB90F)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.f,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff8B3A3A)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.f,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff8B8B00)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.f,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesData = List<charts.Series<Pollution, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff436EEE),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [

                Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
            title: Text('Charts'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Amount of Cakes Sold last week (in Kilograms)',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Time spent on daily routines',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Expanded(
                          child: charts.PieChart(_seriesPieData,
                              animate: true,
                              animationDuration: Duration(seconds: 5),
                              behaviors: [
                                new charts.DatumLegend(
                                  outsideJustification:
                                      charts.OutsideJustification.endDrawArea,
                                  horizontalFirst: false,
                                  desiredMaxRows: 2,
                                  cellPadding: new EdgeInsets.only(
                                      right: 4.0, bottom: 4.0),
                                  entryTextStyle: charts.TextStyleSpec(
                                      color: charts
                                          .MaterialPalette.purple.shadeDefault,
                                      fontFamily: 'Akure',
                                      fontSize: 11),
                                )
                              ],
                              defaultRenderer: new charts.ArcRendererConfig(
                                  arcWidth: 100,
                                  arcRendererDecorators: [
                                    new charts.ArcLabelDecorator(
                                        labelPosition:
                                            charts.ArcLabelPosition.inside)
                                  ])),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Enquires for last Month',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: charts.LineChart(_seriesLineData,
                              defaultRenderer: new charts.LineRendererConfig(
                                  includeArea: true, stacked: true),
                              animate: true,
                              animationDuration: Duration(seconds: 5),
                              behaviors: [
                                new charts.ChartTitle('Days rep. in Numbers',
                                    behaviorPosition:
                                        charts.BehaviorPosition.bottom,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Person(s)',
                                    behaviorPosition:
                                        charts.BehaviorPosition.start,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle(
                                  'Departments',
                                  behaviorPosition: charts.BehaviorPosition.end,
                                  titleOutsideJustification: charts
                                      .OutsideJustification.middleDrawArea,
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  double quantity;

  Pollution(this.year, this.place, this.quantity);

  get d => quantity;
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);

  get e => taskvalue;
}

class Sales {
  int yearval;
  double salesval;

  Sales(this.yearval, this.salesval);

  get f => salesval;
}

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class resumeAnalysis extends StatefulWidget {
  @override
  State<resumeAnalysis> createState() => _resumeAnalysisState();
}

class _resumeAnalysisState extends State<resumeAnalysis> {
  Map<String, double> dataMap = {
    "Match": 7.5,
    "Unmatch": 2.5,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 233, 233),
      body: SingleChildScrollView(
          child: Column(
        children: [
          //appbar
          AppBar(
            toolbarHeight: 120,
            backgroundColor: Color.fromARGB(255, 255, 235, 235),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            leadingWidth: 50,
            //leading icons
            leading: Container(
              margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
              child: Image.asset(
                'assets/icons/globe.png',
              ),
            ),
            centerTitle: false,
            //search bar as title
            title: Center(
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(110, 229, 82, 82),
                        blurRadius: 5,
                        offset: Offset(3, 3))
                  ],
                ),
                //search bar
                child: TextField(
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(height: 1.0),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 30),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'MontSerratAlternates',
                      ),
                      focusedBorder: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(10),
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent),
                      )),
                ),
              ),
            ),
            //profilepic at actions
            actions: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 15, 0),
                padding: EdgeInsets.fromLTRB(0, 35, 10, 0),
                height: 45,
                width: 45,
                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/images/profile.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
          // main container
          Container(
            height: 560,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //graph and match
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //graph
                        Container(
                          width: 200,
                          height: 130,
                          margin: EdgeInsets.only(top: 20),
                          child: PieChart(
                            dataMap: dataMap,
                            animationDuration: Duration(milliseconds: 800),
                            chartLegendSpacing: 2,
                            chartRadius:
                                MediaQuery.of(context).size.width / 3.2,
                            chartType: ChartType.ring,
                            ringStrokeWidth: 20,
                            legendOptions: LegendOptions(
                              showLegendsInRow: true,
                              legendPosition: LegendPosition.bottom,
                              showLegends: false,
                              legendTextStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 8),
                            ),
                            chartValuesOptions: ChartValuesOptions(
                              showChartValueBackground: false,
                              showChartValues: true,
                              showChartValuesInPercentage: true,
                              showChartValuesOutside: false,
                              decimalPlaces: 0,
                            ),
                          ),
                        ),
                        //match
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'HARD SKILL MATCH',
                                      style: TextStyle(
                                        fontFamily: 'MonteSerratAlternates',
                                        fontSize: 12,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 100,
                                            child: Expanded(
                                              child: Divider(
                                                color: Color.fromARGB(
                                                    110, 229, 82, 82),
                                                indent: 0,
                                                thickness: 4,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Divider(
                                              color: Color.fromRGBO(
                                                  215, 215, 215, 1),
                                              indent: 0,
                                              thickness: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          '65%',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'SOFT SKILL MATCH',
                                      style: TextStyle(
                                        fontFamily: 'MonteSerratAlternates',
                                        fontSize: 12,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 70,
                                            child: Expanded(
                                              child: Divider(
                                                color: Color.fromARGB(
                                                    110, 229, 82, 82),
                                                indent: 0,
                                                thickness: 4,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Divider(
                                              color: Color.fromRGBO(
                                                  215, 215, 215, 1),
                                              indent: 0,
                                              thickness: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          '45%',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'POST SPECIFIC MATCH',
                                      style: TextStyle(
                                        fontFamily: 'MonteSerratAlternates',
                                        fontSize: 12,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 40,
                                            child: Expanded(
                                              child: Divider(
                                                color: Color.fromARGB(
                                                    110, 229, 82, 82),
                                                indent: 0,
                                                thickness: 4,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Divider(
                                              color: Color.fromRGBO(
                                                  215, 215, 215, 1),
                                              indent: 0,
                                              thickness: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 160,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          '20%',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //hard skill data
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                    height: 118,
                    width: 336,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(110, 229, 82, 82),
                              blurRadius: 5,
                              offset: Offset(3, 3))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //text
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 10),
                          child: Text(
                            'HARD SKILLS',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'MontSerratAlternates',
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        //content
                        Container(
                          height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              //keywords
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //text
                                    Container(
                                        margin: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'Keywords',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(252, 89, 87, 87),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'JAVASCRIPT',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'NODE JS',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'FLUTTER',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              //vertical divider
                              VerticalDivider(
                                width: 3,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.grey,
                              ),
                              //repeat in job
                              Container(
                                margin: EdgeInsets.only(left: 0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //text
                                    Container(
                                        margin: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'Repeat in jobs',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(252, 89, 87, 87),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              //vertical divider
                              VerticalDivider(
                                width: 3,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.grey,
                              ),
                              //repeat in resume
                              Container(
                                margin: EdgeInsets.only(left: 0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //text
                                    Container(
                                        margin: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'Repeat in resume',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(252, 89, 87, 87),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //soft skill data
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                    height: 118,
                    width: 336,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(110, 229, 82, 82),
                              blurRadius: 5,
                              offset: Offset(3, 3))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //text
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 10),
                          child: Text(
                            'SOFT SKILLS',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'MontSerratAlternates',
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        //content
                        Container(
                          height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              //keywords
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //text
                                    Container(
                                        margin: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'Keywords',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(252, 89, 87, 87),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'ENGLISH',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'SPANISH',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'GERMANY',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              //vertical divider
                              VerticalDivider(
                                width: 3,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.grey,
                              ),
                              //repeat in job
                              Container(
                                margin: EdgeInsets.only(left: 0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //text
                                    Container(
                                        margin: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'Repeat in jobs',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(252, 89, 87, 87),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              //vertical divider
                              VerticalDivider(
                                width: 3,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.grey,
                              ),
                              //repeat in resume
                              Container(
                                margin: EdgeInsets.only(left: 0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //text
                                    Container(
                                        margin: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'Repeat in resume',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(252, 89, 87, 87),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //post specific skill data
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                    height: 118,
                    width: 336,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(110, 229, 82, 82),
                              blurRadius: 5,
                              offset: Offset(3, 3))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //text
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 10),
                          child: Text(
                            'POST SPECIFIC KEYWORDS MATCH',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'MontSerratAlternates',
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        //content
                        Container(
                          height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              //keywords
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //text
                                    Container(
                                        margin: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'Keywords',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(252, 89, 87, 87),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'JAVASCRIPT',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'NODE JS',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'FLUTTER',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              //vertical divider
                              VerticalDivider(
                                width: 3,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.grey,
                              ),
                              //repeat in job
                              Container(
                                margin: EdgeInsets.only(left: 0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //text
                                    Container(
                                        margin: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'Repeat in jobs',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(252, 89, 87, 87),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              //vertical divider
                              VerticalDivider(
                                width: 3,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.grey,
                              ),
                              //repeat in resume
                              Container(
                                margin: EdgeInsets.only(left: 0, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //text
                                    Container(
                                        margin: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'Repeat in resume',
                                          style: TextStyle(
                                            fontSize: 7,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(252, 89, 87, 87),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontFamily: 'MontSerratAlternates',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

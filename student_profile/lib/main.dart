import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecell/Components/student_card.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var schools = ['SCHOOL','SCIT','SEEC','SAMM','SCCE'];
  var year = ['YEAR','I','II','III','IV'];
  var branch = ['BRANCH','CS','IT','CCE','MECHANICAL','MECHATRONICS','ELECTRICAL','CHEMICAL','CIVIL','ECE','AUTOMOBILE',];
  var school_selectd_code = 'SCHOOL';
  var year_selectd_code = 'YEAR';
  var branch_selectd_code = 'BRANCH';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF253036),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 200,
                        child: TextField(
                          onChanged: (value){
                            print(value);
                          },
                          decoration: InputDecoration(
                              suffixIcon:IconButton(
                                icon: Icon(Icons.search,
                                  color: Colors.blue,),
                                onPressed: (){},
                              ),
                            hintText: 'SEARCH',
                            hintStyle: TextStyle(
                              color: Colors.white
                            )
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('FILTERS',
                      style: TextStyle(
                        color: Colors.cyan
                      ),),
                      SizedBox(
                        width: 20,
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Color(0xFF253036),),
                        child: DropdownButton<String>(
                          items: schools.map((String dropDownStringItem){
                            return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem,
                                  style: TextStyle(
                                    fontSize: 15,
                                      color: Colors.white
                                  ),)
                            );
                          }).toList(),

                          onChanged: (String selectedvalue) {
                            setState(() {
                              this.school_selectd_code = selectedvalue;
                            });
                          },
                          value: school_selectd_code,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                            canvasColor: Color(0xFF253036),),
                        child: DropdownButton<String>(
                          items: year.map((String dropDownStringItem){
                            return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white
                                  ),)
                            );
                          }).toList(),
                          onChanged: (String selectedvalue) {
                            setState(() {
                              this.year_selectd_code = selectedvalue;
                            });
                          },
                          value: year_selectd_code,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                            canvasColor: Color(0xFF253036),),
                        child: DropdownButton<String>(
                          items: branch.map((String dropDownStringItem){
                            return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white
                                  ),)
                            );
                          }).toList(),

                          onChanged: (String selectedvalue) {
                            setState(() {
                              this.branch_selectd_code = selectedvalue;
                            });
                          },
                          value: branch_selectd_code,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      StudentCard(branch: 'Btech(IT)', registration_no: 189302073, name:'Aditya ', achievements: 5, certificates: 9,),
                      StudentCard(branch: 'Btech(IT)', registration_no: 189302073, name:'Anubhav ', achievements: 10, certificates: 10,),
                      StudentCard(branch: 'Btech(CS)', registration_no: 189301079, name:'Yugam', achievements: 7, certificates: 9,),
                      StudentCard(branch: 'Btech(CCE)', registration_no: 189303089, name:'Ram ', achievements: 12, certificates: 15,),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
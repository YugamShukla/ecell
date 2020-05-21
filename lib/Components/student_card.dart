import 'package:flutter/material.dart';
class StudentCard extends StatelessWidget {
  StudentCard({this.branch, this.registration_no, this.name, this.achievements, this.certificates});
  final double registration_no;
  final String branch;
  final String name;
  final int certificates;
  final int achievements;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 500,
      margin: EdgeInsets.symmetric(vertical:30.0, horizontal: 30.0),
      padding: EdgeInsets.only(top: 10.0),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric( horizontal: 50,vertical: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              color: Color(0xFF38454E),
            ),
            child:Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(name.toUpperCase(),
                    style: TextStyle(
                      color: Color(0xFFD2D6D9),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text("Registration Number: ",
                                style: TextStyle(
                                    color: Colors.cyan,
                                    fontWeight: FontWeight.w500
                                ),),
                              Text("$registration_no",
                                style: TextStyle(
                                    color: Color(0xFFD2D6D9),
                                    fontWeight: FontWeight.w500
                                ),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Batch: ",
                                style: TextStyle(
                                    color: Colors.cyan,
                                    fontWeight: FontWeight.w500
                                ),),
                              Text("$branch",
                                style: TextStyle(
                                    color: Color(0xFFD2D6D9),
                                    fontWeight: FontWeight.w500
                                ),),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("$certificates Certificates",
                            style: TextStyle(
                                color: Color(0xFFD2D6D9),
                                fontWeight: FontWeight.w500
                            ),),
                          Text("$achievements Achievements",
                            style: TextStyle(
                                color: Color(0xFFD2D6D9),
                                fontWeight: FontWeight.w500
                            ),)
                        ],
                      )
                    ],
                  ),
                  FlatButton(
                    onPressed: (){

                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('View Profile >',
                      style: TextStyle(
                        color: Color(0xFFD2D6D9),
                        fontSize: 15.0,
                      ),),
                    ),
                  )
                ],
              ),
            ),
          ),
          FractionalTranslation(
            translation: Offset(0.3 , -0.5),
            child: Align(
              child: Card(
                elevation: 20.0,
                color: Colors.white,
                child: Icon(Icons.account_circle,
                  size:70.0,
                  color: Colors.cyan,
                ),
                shape: CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

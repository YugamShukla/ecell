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
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              color: Color(0xFF38454E),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(name.toUpperCase(),
                style: TextStyle(
                  color: Color(0xFFD2D6D9),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
                ),),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Registration Number:$registration_no",
                          style: TextStyle(
                              color: Color(0xFFD2D6D9),
                              fontWeight: FontWeight.w500
                          ),),
                        Text("Batch:$branch",
                          style: TextStyle(
                              color: Color(0xFFD2D6D9),
                              fontWeight: FontWeight.w500
                          ),),
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
          FractionalTranslation(
            translation: Offset(0.0, -0.13),
            child: Align(
              child: CircleAvatar(
                radius: 30,
              child: Icon(Icons.person,
                color: Colors.white,
                size: 40,
              ),
              backgroundColor: Colors.cyan,
              ),
              alignment: FractionalOffset(0.9, 0.0),
            ),
          ),
        ],
      ),
    );
  }
}

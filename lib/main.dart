import 'package:flutter/material.dart';
import 'package:ifit_coach_ui/my_widget.dart';

void main()
{
  runApp(
    MaterialApp(
      home: myHome(),
    )
  );
}
Widget tabWidget()
{
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Text("TODAY'S PLAN",style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        Text("DASHBOARD",style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
      ],
    ),
  );
}


class myHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Sport'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Center(child: Text('iFit Coach',style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
            ),)),
          ),

          tabWidget(),

          MyWidget("ACTIVITY",Colors.blueAccent),
          MyWidget("WORKOUT", Colors.orange),
          MyWidget("NUTRITION", Colors.green),
          MyWidget("SLEEP", Colors.purpleAccent),
        ],
      ),
    );
  }
}

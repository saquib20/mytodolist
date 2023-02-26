import 'package:flutter/material.dart';

class todoui extends StatefulWidget {
  @override
  State<todoui> createState() => _todouiState();
}

class _todouiState extends State<todoui> {
  void showalertdialog(){
    showDialog(
        context: (context),
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: Text(
            "Add a Task",
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                autofocus: true,
              ),
              Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(onPressed:(){},
                      child: Text(
                        "ADD"
                      ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }


  Widget mycard(String task){
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
              "$task",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          onLongPress: (){
            print("Should Get Deleted!");
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showalertdialog,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        title: Text("My Tasks", style: TextStyle(fontSize: 25),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mycard("Record a video"),
            mycard("Go to Sleep"),
            mycard("Do your work by 3pm "),
            mycard("Complete your flutter project"),
            mycard("Reach clg by 8:45"),
            mycard("go yto gym "),
            mycard("Football match at 8pm"),
            mycard("Record a video"),
            mycard("Record a video"),
            mycard("Record a video"),
            mycard("Record a video"),
          ],
        ),
      ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardUser extends StatelessWidget {
  CardUser(
      {Key? key, required this.name, required this.address, required this.age})
      : super(key: key);
  final String name;
  final String address;
  final int age;
  int item = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 0; i <= item; i++) getCardItem(),
          // getButton(context),
        ],
      ),
    );
  }

  Widget getCardUser(int id, String name, String address, int age) {
    return SizedBox(
      height: 150,
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              id.toString(),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              address,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              age.toString(),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        item++;
      },
      child: Icon(Icons.add),
      mini: true,
    );
  }

  Widget getCardItem() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 95,
          width: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: Icon(Icons.supervisor_account,
                        size: 24, color: Colors.blueAccent),
                    padding: const EdgeInsets.all(12),
                  ),
                  Container(
                    child: Text(
                      "2100",
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                    padding: const EdgeInsets.all(12),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
                child: Text("Student"),
                padding: const EdgeInsets.all(12),
              )
            ],
          ),
        ),
      ),
    );
  }
}

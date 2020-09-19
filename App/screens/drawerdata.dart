import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(

              accountName: Text("Yash"),
              accountEmail: Text(
                  "xyz@gmail.com"
              ),
              currentAccountPicture: CircleAvatar(
                child: Text(
                    "Y"
                ),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  child: Text(
                      "Y"
                  ),
                )],
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("View Cart"),

            ),

            Expanded(
                child:Align(
                  alignment: Alignment.bottomCenter,
                  child: ListTile(
                    leading: Icon(Icons.subdirectory_arrow_left),
                    title: Text("Logout"),
                  ),
                )
            )
          ],
        ),
    );
  }

}

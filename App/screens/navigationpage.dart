import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'cartpage.dart';
import 'drawerdata.dart';
import 'shoppinglist.dart';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner:false,home:NavigationPage()));

class NavigationPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>NavigationPageState();
  }

class NavigationPageState extends State<NavigationPage>
{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    ShoppingPage(),
    Image.asset('images/logo2.png',height: 1000,width: 1000,),
    CartPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryIconTheme: IconThemeData(color: Color.fromRGBO(7 ,51, 161, 1))),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
         title: Row(crossAxisAlignment:CrossAxisAlignment.start,children:[ Image.asset('images/logoTab.png',width: 125,height: 150,fit: BoxFit.contain,)]),
         // title:  Text('MED-I-Care',textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF2470C7)),),
          backgroundColor: Color.fromRGBO(240, 248, 255, 1),
          actions: [

            GestureDetector(
              onTap: (){
                setState(() {
                  _selectedIndex=2;
                });

              },
              child: Stack(

                children: [
                  Padding (
                    padding: EdgeInsets.fromLTRB(5, 10,10, 5),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30,
                    ),
                  ),
                  Positioned(
                    bottom: 37,
                    right:10,
                    child:Container(
                      width: 16,
                     height: 16,
                     decoration: BoxDecoration(
                       color: Colors.red,
                       shape:BoxShape.circle,
                     ),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                          child: Text("0",style: TextStyle(color:Colors.white),textAlign: TextAlign.center,)
                      ),
                    ),
                  )
                ],
              ),
            )
          ],

          bottom:
            PreferredSize(
              preferredSize:Size.fromHeight(75.0),
              child: Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0,bottom: 15.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(5.0),
                    child: GestureDetector(
                      child: TextFormField(
                        onTap: (){

                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,
                                color: Color.fromRGBO(7, 51, 161, 1), size: 20.0),
                            contentPadding:
                            EdgeInsets.only(left: 15.0, top: 15.0),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand')),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              title: Text('Shop'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              title: Text('Offers'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Cart'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromRGBO(7, 51, 161, 1),
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
         child: DrawerPage(),
        ),
      ),
    );
  }
  }

  
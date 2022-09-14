import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:exam/appbar.dart';
import 'package:exam/homepageseeall.dart';
import 'package:exam/login.dart';
import 'package:exam/sign%20in.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splashIconSize: 150,
        duration: 2000,
        splash: Lottie.asset("assets/bank1.json"),
        nextScreen: MyHomePage(),
        //splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key,title}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.red[50],
      drawer: Drawer(
       child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Gautam Kakadiya",style: TextStyle(fontFamily: 'RobotoCondensed-Regular'),),
              accountEmail: Text("gautamkakadiya923@gmail.com",style: TextStyle(fontFamily: 'RobotoCondensed-Regular')),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person_outlined,color: Colors.white,size: 34,),
              ),
              decoration: BoxDecoration(
                //shape: BoxShape.circle,
                  color: Colors.black
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Home",style: TextStyle(fontFamily: 'RobotoCondensed-Regular')),
                leading: Icon(Icons.home,color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));},
              child: ListTile(
                title: Text("Login",style: TextStyle(fontFamily: 'RobotoCondensed-Regular')),
                leading: Icon(Icons.login,color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>signin()));
              },
              child: ListTile(
                title: Text("Sign up",style: TextStyle(fontFamily: 'RobotoCondensed-Regular')),
                leading: Icon(Icons.follow_the_signs_sharp,color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About us",style: TextStyle(fontFamily: 'RobotoCondensed-Regular')),
                leading: Icon(Icons.account_balance_outlined,color: Colors.black,),
              ),
            ),
          ],
        ),
      ),
      appBar:MyAppbar(""),
      body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(color: Color.fromRGBO(237, 28, 36,1),
                  child: Container(
                  height: h/9,
                  width: w,
                  alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Savings",style: TextStyle(color: Colors.white,fontFamily: 'RobotoCondensed-Regular' ),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("XXXX0934",style: TextStyle(color: Colors.white,fontFamily: 'RobotoCondensed-Regular' )),
                              SizedBox(width: 180,),
                              Container(
                                height: 28,
                                child: ElevatedButton(
                                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 56, 116,1))),
                                    onPressed: (){},
                                    child: Text("View Balance",
                                        style: TextStyle(color: Colors.white,fontFamily: 'RobotoCondensed-Regular', ))),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Quick Access",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontFamily:'RobotoCondensed-Regular', )),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(height: h/16,width: w/8,
                            child: Card(child: Image.asset("assets/images/pay.jpg"))
                          ),
                        ),SizedBox(height: 8,),
                        Text("Pay your\nContact",
                        style: TextStyle(color:Colors.black,fontSize: 12, fontFamily:'RobotoCondensed-Regular',)),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(height: h/16,width: w/8,
                              child: Card(child: Image.asset("assets/images/smart.png"))
                          ),
                        ),SizedBox(height: 8,),
                        Text("Smart EMI \n     Card",
                            style: TextStyle(color:Colors.black,fontSize: 12, fontFamily:'RobotoCondensed-Regular',))
                      ],
                    ),  SizedBox(width: 20,),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(height: h/16,width: w/8,
                              child: Card(child: Image.asset("assets/images/bank/account.png"))
                          ),
                        ),SizedBox(height: 8,),
                        Text("Account\nOverview",
                            style: TextStyle(color:Colors.black,fontSize: 12, fontFamily:'RobotoCondensed-Regular',))
                      ],
                    ),  SizedBox(width: 20,),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(height: h/16,width: w/8,
                              child: Card(child: Image.asset("assets/images/bank/activity.png"))
                          ),
                        ),SizedBox(height: 8,),
                        Text("Account\nActivity",
                            style: TextStyle(color:Colors.black,fontSize: 12, fontFamily:'RobotoCondensed-Regular',))
                      ],
                    ),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                 height: h/8,
                 width: w,
                 child: Image.asset("assets/images/cong.jpeg",fit: BoxFit.fill,),)
             ),
             Padding(
               padding: const EdgeInsets.only(top: 8.0,left: 10,right: 10),
               child: Container(
                 color: Colors.red[50],
                 height: h/2.25,
                 width: w/1.0,
                 child: provides(),),
             )
            ],
          ),
      )
    );
  }
}

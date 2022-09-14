import 'package:exam/providebank/applynow.dart';
import 'package:exam/providebank/bank.dart';
import 'package:exam/providebank/cards.dart';
import 'package:exam/providebank/insure.dart';
import 'package:exam/providebank/invest.dart';
import 'package:exam/providebank/kaymall.dart';
import 'package:exam/providebank/loans.dart';
import 'package:exam/providebank/pay&transfer.dart';
import 'package:exam/providebank/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class provides extends StatefulWidget {
  const provides({Key? key}) : super(key: key);

  @override
  State<provides> createState() => _providesState();
}

class _providesState extends State<provides> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        children:[
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>bank()));
            },
            child: Container(
              height: h/16,
              width: w/8,
              child: Card(child: Column(children: 
              [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:h/14,width:w/6,child: Image.asset("assets/images/bank.jpg",fit: BoxFit.cover,),),
           ),
                Text("Bank",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12),)
              ],
              ),),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>paytransfer()));
            },
            child: Container(
              height: h/16,
              width: w/8,
              child: Card(child: Column(children:
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:h/14,width:w/8,child: Image.asset("assets/images/transfer.jpeg",fit: BoxFit.cover,),),
                ),
                Text("Pay & Transfer",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12))
              ],
              ),),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>loan()));
            },
            child: Container(
              height: h/16,
              width: w/8,
              child: Card(child: Column(children:
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:h/14,width:w/4,child: Image.asset("assets/images/loan.jpg",fit: BoxFit.cover,),),
                ),
                Text("Loans",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12))
              ],
              ),),
            ),
          ),InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>cards()));
            },
              child: Container(
              height: h/16,
              width: w/8,
              child: Card(child: Column(children:
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:h/14,width:w/6,child: Image.asset("assets/images/cards.jpg",fit: BoxFit.cover,),),
                ),
                Text("Cards",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12))
              ],
              ),),
            ),
          ),InkWell(  onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>kaymall()));
          },
            child: Container(
              height: h/16,
              width: w/8,
              child: Card(child: Column(children:
              [
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:h/14,width:w/6,child: Image.asset("assets/images/kaymall.png",fit: BoxFit.cover,),),
                ),
                Text("KayMall",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12))
              ],
              ),),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>invest()));
            },
            child: Container(
              height: h/16,
              width: w/8,
              child: Card(child: Column(children:
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:h/14,width:w/6,child: Image.asset("assets/images/invest.jpg",fit: BoxFit.cover,),),
                ),
                Text("Invest",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12))
              ],
              ),),
            ),
          ),InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>applynow()));
          },
            child: Container(
              height: h/16,
              width: w/8,
              child: Card(child: Column(children:
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:h/14,width:w/6,child: Image.asset("assets/images/applynow.png",fit: BoxFit.cover,),),
                ),
                Text("Apply Now",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12))
              ],
              ),),
            ),
          ),InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>service()));
            },
            child: Container(
              height: h/16,
              width: w/8,
              child: Card(child: Column(children:
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:h/14,width:w/6,child: Image.asset("assets/images/service.jpg",fit: BoxFit.cover,),),
                ),
                Text("Service Requests",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12))
              ],
              ),),
            ),
          ),InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>insure()));
            },
            child: Container(
              height: h/16,
              width: w/8,
              child: Card(child: Column(children:
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:h/14,width:w/6,child: Image.asset("assets/images/insure.jpg",fit: BoxFit.cover,),),
                ),
                Text("Insure",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12))
              ],
              ),),
            ),
          ),
      ]
    );
  }
}

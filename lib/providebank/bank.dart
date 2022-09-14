import 'package:exam/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bank extends StatefulWidget {
  const bank({Key? key}) : super(key: key);

  @override
  State<bank> createState() => _bankState();
}

class _bankState extends State<bank> {
  List bankit=[
    {
      "text":"Kotak811",
      "images":"assets/images/bank/kotak811.png"
    }, {
      "text":"Account \nOverview",
      "images":"assets/images/bank/account.png"
    }, {
      "text":"Account \nActivity",
      "images":"assets/images/bank/activity.png"
    }, {
      "text":"Statement",
      "images":"assets/images/bank/statement.png"
    }, {
      "text":"Fixed/ \nRecurring \nDeposits",
      "images":"assets/images/bank/fixed.jpg"
    },
    {
      "text":"One View",
      "images":"assets/images/bank/oneview.jpg"
    }, {
      "text":"Cheque\nRequests",
      "images":"assets/images/bank/cheque.jpg"
    },{
      "text":"Spendz",
      "images":"assets/images/bank/spendz.png"
    }, {
      "text":"Send Money\nAbroad",
      "images":"assets/images/bank/sendmoneyabroad.jpg"
    },{
      "text":"Account\nService\nRequests",
      "images":"assets/images/bank/aboutservicerequest.png"
    }, {
      "text":"Account\nstatement",
      "images":"assets/images/bank/accountstatment.png"
    }
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        backgroundColor:Color.fromRGBO(237, 28, 36,1),
        title: Text("Bank",style: TextStyle(fontFamily:'RobotoCondensed-Regular'),),
      ),
      body: ListView.separated(
         shrinkWrap: true,
         itemCount: bankit.length,
         separatorBuilder: (context, index) =>SizedBox(height: 0,),
        itemBuilder: (context, index) => mybank(
          btext: bankit[index]["text"],
          bimages: bankit[index]["images"],
        ),
      )
    );
  }
}
class mybank extends StatelessWidget {
  final btext;
  final bimages;
   mybank({Key? key, this.btext, this.bimages});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
          },
          child: Card(
            elevation: 10,
            child: Container(
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Padding(
                     padding: const EdgeInsets.all(12.0),
                      child: ListTile(
                        leading: InkWell(
                          child: Container(
                              height: h/14,
                              width: w/6,
                              child: Image.asset(bimages,fit: BoxFit.fill ,)),
                        ),
                            title: Text(btext,style: TextStyle(fontSize: 12),),
                      )
                   )
                  ],
                ) ,
              ),
          ),
        ),
      ),
      );
  }
}

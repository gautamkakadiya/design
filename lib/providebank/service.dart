import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class service extends StatefulWidget {
  const service({Key? key}) : super(key: key);

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  List bankit=[
    {
      "text":"Fraud and\nDispute",
      "images":"assets/images/service/fraud.jpg"
    }, {
     "text":"Account\nService\nRequests",
      "images":"assets/images/service/accountservice.jpeg"
    }, {
      "text":"Profile",
      "images":"assets/images/service/profile.png"
    }, {
      "text":"Debit Card\nSpendz Card",
      "images":"assets/images/bank/spendz.png"
    }, {
      "text":"Payment\nGetway",
      "images":"assets/images/service/paymentgateway.png"
    },{
      "text":"Track your\npackages",
      "images":"assets/images/service/track.png"
    }, {
      "text":"Help",
      "images":"assets/images/service/help.jpeg"
    }, {
      "text": "Cheque\nRequests",
      "images": "assets/images/bank/cheque.jpg"
    }, {
      "text": "Forex Card",
      "images": "assets/images/cards/forexcard.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
          backgroundColor:Color.fromRGBO(237, 28, 36,1),
          title: Text("Service Requests",style: TextStyle(fontFamily:'RobotoCondensed-Regular'),),
        ),
        body: ListView.separated(
          shrinkWrap: true,
          itemCount: bankit.length,
          separatorBuilder: (context, index) =>SizedBox(height: 0,),
          itemBuilder: (context, index) => request(
            btext: bankit[index]["text"],
            bimages: bankit[index]["images"],
          ),
        )
    );
  }
}
class request extends StatelessWidget {
  final btext;
  final bimages;
  request({Key? key, this.btext, this.bimages});
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: InkWell(
          onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
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

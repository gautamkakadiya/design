import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paytransfer extends StatefulWidget {
  const paytransfer({Key? key}) : super(key: key);

  @override
  State<paytransfer> createState() => _paytransferState();
}

class _paytransferState extends State<paytransfer> {
  List bankit=[
    {
      "text":"Transfer\nMoney",
      "images":"assets/images/pay&transfer/paytransfer.png"
    },
    {
      "text":"Bill Pay &\nRecharge",
      "images":"assets/images/pay&transfer/bill.png"
    },
    {
      "text":"BHIM UPI",
      "images":"assets/images/pay&transfer/bhimupi.png"
    },
    {
      "text":"Scan any QR",
      "images":"assets/images/pay&transfer/scanqrcode.png"
    },
    {
      "text":"One Time\nTransfer",
      "images":"assets/images/pay&transfer/onetime.png"
    },{
      "text":"Pay Your\nContact",
      "images":"assets/images/pay&transfer/payourcontact.png"
    },{
      "text":"Add/manage\nBeneficiary",
      "images":"assets/images/pay&transfer/addmanage.jpg"
    },{
      "text":"Send to\nMy Kotak\nAccounts",
      "images":"assets/images/pay&transfer/sendtomyaccount.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:AppBar(
          backgroundColor:Color.fromRGBO(237, 28, 36,1),
          title: Text("Pay & Transfer",style: TextStyle(fontFamily:'RobotoCondensed-Regular'),),
        ),
        body: ListView.separated(
          shrinkWrap: true,
          itemCount: bankit.length,
          separatorBuilder: (context, index) =>SizedBox(height: 0,),
          itemBuilder: (context, index) => mypay(
            btext: bankit[index]["text"],
            bimages: bankit[index]["images"],
          ),
        )
    );
  }
}
class mypay extends StatelessWidget {
  final btext;
  final bimages;
   mypay({Key? key, this.btext, this.bimages});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
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
                              height: h/16,
                              width: w/7,
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

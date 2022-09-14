import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class applynow extends StatefulWidget {
  const applynow({Key? key}) : super(key: key);

  @override
  State<applynow> createState() => _applynowState();
}

class _applynowState extends State<applynow> {
  List bankit=[
    {
      "text":"FASTag",
      "images":"assets/images/cards/fasttag.jpeg"
    }, {
      "text":"Credit Card",
      "images":"assets/images/cards/debitcard.jpg"
    }, {
      "text":"Personal Loan",
      "images":"assets/images/loans/personaloan.jpg"
    }, {
      "text":"Payday Loan",
      "images":"assets/images/loans/payday.png"
    }, {
      "text":"Home Loan",
      "images":"assets/images/loans/homeloan.jpg"
    },{
      "text":"Two Wheeler\nLoan",
      "images":"assets/images/twowheeler.jpg"
    },
    {
      "text":"Car Loan",
      "images":"assets/images/loans/carloan.jpg"
    }, {
      "text":"IPO (ASBA)",
      "images":"assets/images/invest/ipo.jpg"
    },{
      "text":"Open\nRecurring\nDeposite",
      "images":"assets/images/deposit.jpeg"
    }, {
      "text":"Forex Card",
      "images":"assets/images/cards/forexcard.png"
    },{
      "text":"Bank+\nDemat+\nTrading A/c",
      "images":"assets/images/invest/demat.jpg"
    }, {
      "text":"Smart EMI",
      "images":"assets/images/smart.png"
    },{
      "text":"Spendz",
      "images":"assets/images/bank/spendz.png"
    },{
      "text":"Health\nInsurance",
      "images":"assets/images/health.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor:Color.fromRGBO(237, 28, 36,1),
          title: Text("Apply Now",style: TextStyle(fontFamily:'RobotoCondensed-Regular'),),
        ),
        body: ListView.separated(
          shrinkWrap: true,
          itemCount: bankit.length,
          separatorBuilder: (context, index) =>SizedBox(height: 0,),
          itemBuilder: (context, index) => now(
            btext: bankit[index]["text"],
            bimages: bankit[index]["images"],
          ),
        )
    );
  }
}
class now extends StatelessWidget {
  final btext;
  final bimages;
  now({Key? key, this.btext, this.bimages});

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

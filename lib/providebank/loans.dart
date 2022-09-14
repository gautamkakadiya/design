import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loan extends StatefulWidget {
  const loan({Key? key}) : super(key: key);

  @override
  State<loan> createState() => _loanState();
}

class _loanState extends State<loan> {
  List bankit=[
    {
      "text":"Loan and\nCard Offers",
      "images":"assets/images/loans/loansandcards.jpg"
    },
    {
      "text":"Free Credit\nScore",
      "images":"assets/images/loans/freedebitscore.png"
    },
    {
      "text":"Personal\nLoan",
      "images":"assets/images/loans/personaloan.jpg"
    },
    {
      "text":"Home Loan",
      "images":"assets/images/loans/homeloan.jpg"
    },
    {
      "text":"Find Your\nHome",
      "images":"assets/images/loans/findhome.jpg"
    },{
      "text":"Property Due\nDilligence",
      "images":"assets/images/loans/propertydue.png"
    },{
      "text":"Pay Day\nLoan",
      "images":"assets/images/loans/payday.png"
    },{
      "text":"Business\nLoan",
      "images":"assets/images/loans/businessloan.png"
    },{
      "text":"Tractor\nLoan",
      "images":"assets/images/loans/tractorfinance.jpg"
    },{
      "text":"Car Loan",
      "images":"assets/images/loans/carloan.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
          backgroundColor:Color.fromRGBO(237, 28, 36,1),
          title: Text("Loans",style: TextStyle(fontFamily:'RobotoCondensed-Regular'),),
        ),
        body: ListView.separated(
          shrinkWrap: true,
          itemCount: bankit.length,
          separatorBuilder: (context, index) =>SizedBox(height: 0,),
          itemBuilder: (context, index) => loans1(
            btext: bankit[index]["text"],
            bimages: bankit[index]["images"],
          ),
        )
    );
  }
}
class loans1 extends StatelessWidget {
  final btext;
  final bimages;
  loans1({Key? key, this.btext, this.bimages}) : super(key: key);

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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class invest extends StatefulWidget {
  const invest({Key? key}) : super(key: key);

  @override
  State<invest> createState() => _investState();
}

class _investState extends State<invest> {
  List bankit=[
    {
      "text":"Bank +\nDemat +\nTrading A/c",
      "images":"assets/images/invest/demat.jpg"
    }, {
      "text":"Fixed/\nRexurring\nDeposits",
      "images":"assets/images/invest/fixedrecurring.png"
    }, {
      "text":"National\nPersion\nSystem(NPS)",
      "images":"assets/images/invest/nps.png"
    }, {
      "text":"IPO(ASBA)",
      "images":"assets/images/invest/ipo.jpg"
    }, {
      "text":"Atal Persion\nYojana",
      "images":"assets/images/invest/atal.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor:Color.fromRGBO(237, 28, 36,1),
          title: Text("Invest",style: TextStyle(fontFamily:'RobotoCondensed-Regular'),),
        ),
        body: ListView.separated(
          shrinkWrap: true,
          itemCount: bankit.length,
          separatorBuilder: (context, index) =>SizedBox(height: 0,),
          itemBuilder: (context, index) => einvest(
            btext: bankit[index]["text"],
            bimages: bankit[index]["images"],
          ),
        )
    );
  }
}
class einvest extends StatelessWidget {
  final btext;
  final bimages;
  einvest({Key? key, this.btext, this.bimages});

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
                        title: Text(btext,style: TextStyle(fontSize: 14,fontFamily:'RobotoCondensed-Regular'),),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cards extends StatefulWidget {
  const cards({Key? key}) : super(key: key);

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  List bankit=[
    {
      "text":"Debit Card / \nSpendz Card",
      "images":"assets/images/cards/debitcard.jpg"
    }, {
      "text":"Forex Card",
      "images":"assets/images/cards/forexcard.png"
    }, {
      "text":"Image Debit\nCard",
      "images":"assets/images/cards/imagedebitcard.jpg"
    }, {
      "text":"Smart EMI \nCard",
      "images":"assets/images/cards/smartemicard.png"
    }, {
      "text":"FASTag",
      "images":"assets/images/cards/fasttag.jpeg"
    },{
      "text":"Kotak Gift \nCard",
      "images":"assets/images/cards/giftcard.png"
    },{
      "text":"Card \nProtection\nPlan",
      "images":"assets/images/cards/offers.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor:Color.fromRGBO(237, 28, 36,1),
          title: Text("Cards",style: TextStyle(fontFamily:'RobotoCondensed-Regular',),
        ),),
        body: ListView.separated(
          shrinkWrap: true,
          itemCount: bankit.length,
          separatorBuilder: (context, index) =>SizedBox(height: 0,),
          itemBuilder: (context, index) => ecard(
            btext: bankit[index]["text"],
            bimages: bankit[index]["images"],
          ),
        )
    );
  }
}
class ecard extends StatelessWidget {
  final btext;
  final bimages;
   ecard({Key? key, this.btext, this.bimages});

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
                        title: Text(btext,style: TextStyle(fontSize: 13,fontFamily:'RobotoCondensed-Regular'),),
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

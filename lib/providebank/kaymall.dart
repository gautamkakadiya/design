import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kaymall extends StatefulWidget {
  const kaymall({Key? key}) : super(key: key);

  @override
  State<kaymall> createState() => _kaymallState();
}

class _kaymallState extends State<kaymall> {
  @override
  Widget build(BuildContext context) {
    List bankit=[
      {
        "text":"Flipkart",
        "images":"assets/images/kaymall/flipcart.jpg"
      }, {
        "text":"Train -\nIRCTC",
        "images":"assets/images/kaymall/train.jpg"
      }, {
        "text":"Flight",
        "images":"assets/images/kaymall/flight.jpg"
      }, {
        "text":"Bigbasket",
        "images":"assets/images/kaymall/bigbasket.jpg"
      }, {
        "text":"Gifing",
        "images":"assets/images/kaymall/gifing.jpg"
      },{
        "text":"Tata 1 mg",
        "images":"assets/images/kaymall/tata1mg.png"
      },{
        "text":"Bus",
        "images":"assets/images/kaymall/bus.jpg"
      },
      {
        "text":"Beauty",
        "images":"assets/images/kaymall/beauty.jpg"
      },
    ];
    return Scaffold(
        appBar:AppBar(
          backgroundColor:Color.fromRGBO(237, 28, 36,1),
          title: Text("KayMall",style: TextStyle(fontFamily:'RobotoCondensed-Regular'),),
        ),
        body: ListView.separated(
          shrinkWrap: true,
          itemCount: bankit.length,
          separatorBuilder: (context, index) =>SizedBox(height: 0,),
          itemBuilder: (context, index) => ekaymall(
            btext: bankit[index]["text"],
            bimages: bankit[index]["images"],
          ),
        )
    );
  }
}
class ekaymall extends StatelessWidget {
  final btext;
  final bimages;
   ekaymall({Key? key, this.btext, this.bimages});

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

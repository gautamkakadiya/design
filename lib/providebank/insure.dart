import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class insure extends StatefulWidget {
  const insure({Key? key}) : super(key: key);

  @override
  State<insure> createState() => _insureState();
}

class _insureState extends State<insure> {
  List bankit=[
    {
      "text":"Project",
      "images":"assets/images/insure/project.jpg"
    }, {
      "text":"Health\nInsurance",
      "images":"assets/images/health.png"
    }, {
      "text":"Assured\nsaving plan",
      "images":"assets/images/insure/saving.jpg"
    }, {
      "text":"Insta life\nCover",
      "images":"assets/images/insure/lifeinsurance.jpg"
    }, {
      "text":"My Policies",
      "images":"assets/images/insure/mypolicies.jpg"
    },{
      "text":"E-Term Plan",
      "images":"assets/images/insure/eterm.jpg"
    },
    {
      "text":"Cyber\nInsurance",
      "images":"assets/images/insure/cyber.jpg"
    }, {
      "text": "Two Wheeler\nInsurance",
      "images": "assets/images/insure/twoins.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
          backgroundColor:Color.fromRGBO(237, 28, 36,1),
          title: Text("Insure",style: TextStyle(fontFamily:'RobotoCondensed-Regular'),),
        ),
        body: ListView.separated(
          shrinkWrap: true,
          itemCount: bankit.length,
          separatorBuilder: (context, index) =>SizedBox(height: 0,),
          itemBuilder: (context, index) => einsure(
            btext: bankit[index]["text"],
            bimages: bankit[index]["images"],
          ),
        )
    );
  }
}
class einsure extends StatelessWidget {
  final btext;
  final bimages;
  einsure({Key? key, this.btext, this.bimages});

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


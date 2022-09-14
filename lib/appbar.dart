import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


PreferredSizeWidget MyAppbar (String texts){
  return PreferredSize(
    preferredSize: Size.fromHeight(54),
    child: AppBar(
      backgroundColor:Color.fromRGBO(237, 28, 36,1),
      actions: [
        Container(height:120,width:120,child: Image.asset("assets/appkotak.png",fit: BoxFit.cover,)),
        SizedBox(width: 100,),
        CircleAvatar(child: Icon(Icons.person_outline,color: Colors.white,),backgroundColor: Colors.red[200],radius: 15,),
        SizedBox(width: 8,),
        Icon(Icons.notifications_none_outlined,size: 28),SizedBox(width: 8,),
        Icon(Icons.search_rounded,size: 28,),SizedBox(width: 12,),
      ],
    ),
  );
}


import 'package:eshop/model/product.dart';
import 'package:eshop/page/dispaly.dart';
import 'package:flutter/material.dart';

class CardDesign extends StatefulWidget {
  const CardDesign({Key? key}) : super(key: key);

  @override
  _CardDesignState createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {
  final data =Product.listItem();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) {
        var item=data[index];
           return Container(
             height: 150,
             child: InkWell(
               onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>DispalyPage(
                    name: data[index].name,
                    price: data[index].price,
                    des: data[index].des,
                    img: data[index].img,
                  )));

               },
               child: Card(
                 semanticContainer: true,

                 elevation: 0,
                 child: Column(
                   children: [
                     Container(
                       height: 140,
                       child: Row(
                         children: [
                           Expanded(flex:4,child: Image.asset(item.img,),),

                           Expanded(flex:10,child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(item.name,style: TextStyle(fontSize: 28),),
                               SizedBox(height: 10,),
                               Row(children: [
                                 Text(item.price.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                 SizedBox(height: 10,),
                                 Text(" ৳",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                               ],)
                             ],
                           )),

                           Padding(
                             padding: const EdgeInsets.only(right: 20),
                             child: Expanded(flex:1,child: Center(child: Icon(Icons.favorite_outline))),
                           ),



                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ),
           );
      },
          separatorBuilder: (context,index){
            return SizedBox(height: 10,);
          },

          itemCount: data.length),

    );

  }
}

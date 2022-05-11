import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
   CardList({Key? key,this.name,this.price,this.img}) : super(key: key);
  String? name;
  double? price;
  String? img;

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {

  int i=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item List"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: 150,
          child: Card(
            semanticContainer: true,

            elevation: 0,
            child: Column(
              children: [
                Container(
                  height: 140,
                  child: Row(
                    children: [
                      Expanded(flex:4,child: Image.asset("${widget.img}",),),

                      Expanded(flex:10,child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${widget.name}",style: TextStyle(fontSize: 28),),
                          SizedBox(height: 10,),
                          Row(children: [
                            Text("${((widget.price)!*i)}".toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text(" ৳",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
                          ],)
                        ],
                      )),

                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Expanded(flex:3,child: Center(child: Row(
                          children: [
                            IconButton(onPressed: (){
                              setState(() {
                                i++;
                              });

                            }, icon: Icon(Icons.add)),

                            Text("$i",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),


                            IconButton(onPressed: (){
                              if(i>1){
                                setState(() {
                                  i--;
                                });
                              }

                            }, icon: Icon(Icons.remove)),
                          ],
                        ))),
                      ),



                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}

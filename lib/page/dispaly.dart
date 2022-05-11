import 'package:eshop/page/card_list.dart';
import 'package:flutter/material.dart';

class DispalyPage extends StatefulWidget {
   DispalyPage({Key? key,this.name,this.price,this.des,this.img}) : super(key: key);

  String? name;
  double? price;
  String? des;
  String ?img;
  @override
  _DispalyPageState createState() => _DispalyPageState();
}

class _DispalyPageState extends State<DispalyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
      title: Text("${widget.name}"),
    backgroundColor: Colors.green,
  ),
      body: Container(
        child: Card(
          semanticContainer: true,
          elevation: 0,
          child: Column(
            children: [
              Expanded(flex: 18,
                child: Column(children: [
                  Stack(
                    children: [
                      Image.asset("${widget.img}",height: 200,width: double.infinity,),
                      Positioned(
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black26,
                              child: Icon(Icons.favorite_outline,color: Colors.white,)),
                        ),
                      ),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${widget.name}",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Text("${widget.price}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              Text(" ৳",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text("${widget.des}",style: TextStyle(fontSize: 16),),




                      ],
                    ),
                  )
                ],),
              ),
              Expanded(flex: 1,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CardList(
                     name:widget.name ,
                    price: widget.price,
                    img: widget.img,
                  )));
                },
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Colors.green,
                child: Text("Add Card",style: TextStyle(fontSize: 14,color: Colors.white),),

              ),)
            ],

          ),
        ),
      ),
    );
  }
}

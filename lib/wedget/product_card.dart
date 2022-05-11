import 'package:eshop/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: Container(
       // padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding *1.5),
          ),
        ),
        child: GestureDetector(
          onTap: (){},
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultPadding*1.5),
                    bottomLeft: Radius.circular(defaultPadding*1.5),
                  ),
                 child: Image.asset("assets/images/apple.jpg",),
                ),
              ),

              Expanded(flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 30),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apple",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Apples are an incredibly nutritious fruit that offers multiple health benefits. They're rich in fiber and antioxidants. Eating them is linked to a lower risk of many chronic conditions, including diabetes, heart disease, and cancer. Apples may also promote weight loss and improve gut and brain health",
                        style: Theme.of(context).textTheme.caption, maxLines: 2,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("49",style: TextStyle(fontWeight: FontWeight.bold),),
                          Icon(Icons.favorite_outline),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}

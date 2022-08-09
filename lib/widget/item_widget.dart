import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Melhores", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Color(0xFF00A368)),),
              Text("Veja todas", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black54),)
            ],
          ),
        ),
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          shrinkWrap: true,
          children: [
            for (int i=1; i<8; i++)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "itemPage");
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset("assets/images/$i.png",width: 110,height: 110,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Titulo Item", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Color(0xFF555555)),),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Vegetais Frescos 2kg", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Color(0xFF555555)),),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("R\$20", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Color(0xFF00A368)),),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Color(0xFF00A368),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.add_shopping_cart, size: 18, color: Colors.white,),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

          ],
        )
      ],
    );
  }
}

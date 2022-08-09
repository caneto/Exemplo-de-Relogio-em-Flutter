import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetoexemploflutter/widget/botton_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                height: 350,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/2.png"),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, size: 30,color: Color(0xFF00A368),),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF00A368),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Titulo da Fruta", style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(CupertinoIcons.minus),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color:  Colors.white
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(CupertinoIcons.plus),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 30,),
                        Text("4.8 (230)", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Descrição:", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                          SizedBox(height: 10,),
                          Text(
                            "Esta descrição do produto, aqui a ser excrito, com mais detalhes",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text("Tempo de Entrega:", style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),),
                        Spacer(),
                        Icon(CupertinoIcons.clock, color: Colors.white,),
                        SizedBox(width: 5),
                        Text("20 Minutos", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottonBar(),
    );
  }
}

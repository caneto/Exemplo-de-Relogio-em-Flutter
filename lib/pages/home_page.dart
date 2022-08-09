import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetoexemploflutter/widget/botton_card_sheet.dart';
import 'package:projetoexemploflutter/widget/categories_widget.dart';
import 'package:projetoexemploflutter/widget/popular_item_widget.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../widget/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Color(0xFF00A368),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 20, left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,color: Colors.white, size: 30,),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF00A368),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 2,
                          )
                        ]),
                        child: Badge(
                          badgeColor: Colors.red,
                          padding: EdgeInsets.all(7),
                          badgeContent: Text("3", style: TextStyle(color: Colors.white),),
                          child: InkWell(
                            onTap: () {
                              showSlidingBottomSheet(
                                  context,
                                  builder: (context) {
                                    return SlidingSheetDialog(
                                      elevation: 8,
                                      cornerRadius: 16,
                                      builder: (context, state) {
                                        return BottonCardSheet();
                                      }
                                    );
                                },);
                            },
                            child: Icon(CupertinoIcons.cart,size: 30,color: Colors.white,),
                          ),
                        ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Bem Vindo", style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold ),),
                    Text("O que você quer comprar?", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Busque aqui....",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoriesWidget(),
                    PopularItemWidget(),
                    ItemWidget(),
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

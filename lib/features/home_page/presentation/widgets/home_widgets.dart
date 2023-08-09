import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

AppBar appBarForHome() => AppBar( centerTitle: true ,title: SizedBox( height: 110, width: 110, child: Image.asset('assets/logo.png')),  leading: const Icon(Icons.person_outline_rounded , size: 30 ,color: Color(0xffd90429),) , actions:  const [ Padding( padding: EdgeInsetsDirectional.all(10) , child: Icon(Icons.menu , size: 30 , color: Color(0xffd90429),))] , backgroundColor: Colors.transparent,) ;


Widget mainWidgetForHome (context) => Stack(children: [

  SizedBox(
      height: double.infinity,

      child: Opacity(opacity: 0.4, child: Image.asset('assets/background.png', fit: BoxFit.fill, ),),),
  PageView(
    physics: const BouncingScrollPhysics(),

    children: [
      pageViewItem(context: context, sandwichName:'Double McChicken', sandwichPic: 'b1.png', sandwichPrice: '5'),
      pageViewItem(context: context, sandwichName:'Big Mac', sandwichPic: 'b2.png', sandwichPrice: '4'),
      pageViewItem(context: context, sandwichName:'Big Tasty', sandwichPic: 'b3.png', sandwichPrice: '6'),
      pageViewItem(context: context, sandwichName:'Cheese Burger', sandwichPic: 'b4.png', sandwichPrice: '2'),
    ],


  ),



],);





Widget pageViewItem ({context, sandwichName,sandwichPic,sandwichPrice}) => Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

    FadeIn( delay: const Duration(milliseconds: 500) , child: Text(sandwichName ,style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.black , fontFamily: 'SignikaNegativeSemiBold'))),

    const SizedBox(height: 30,),

    Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SlideInUp(child: Image.asset('assets/plate.png', width: 350,)),
        Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 30),
            child: SlideInDown(child: Image.asset('assets/$sandwichPic' , height: 200, width: 200,))),
      ],),

    const SizedBox(height: 50,),

    Container(  decoration: BoxDecoration(color: const Color(0xffd90429) , borderRadius: BorderRadiusDirectional.circular(15)), child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 10, bottom: 10 , start: 40 , end: 40),
        child: Text('\$$sandwichPrice' ,style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'SignikaNegativeSemiBold'))),),


  ],);
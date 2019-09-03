import 'artificial_insemination.dart';
import 'main.dart';
import 'package:flutter/material.dart';


class Store{
  String itemName;
  double itemPrice;
  String itemImage;
  Store.items({
    this.itemImage,
    this.itemName,
    this.itemPrice,
  });
}

List<Store> storeItems =[

  Store.items(
    itemName: "Mobile",
    //itemImage: "lib/artificial_insemination.dart",
  ),
  Store.items(
    itemName: "Postpaid",
    //itemImage: "https://goo.gl/Du8giw",
  ),

  Store.items(
    itemName: "Electricity",
    //itemImage: "https://goo.gl/vCn5r5",
  ),

  Store.items(
    itemName: "DTH",
    //itemImage: "https://goo.gl/cGP6cH",
  ),
  Store.items(
    itemName: "Movies",
    //itemImage: "https://goo.gl/u2qZQB",
  ),


  Store.items(
    itemName: "Trains",
    //itemImage: "https://goo.gl/bYJBPJ",
  ),
  Store.items(
    itemName: "Daily needs",
    //itemImage: "https://goo.gl/Du8giw",
  ),

  Store.items(
    itemName: "Flight",
    //itemImage: "https://goo.gl/vCn5r5",
  ),

  Store.items(
    itemName: "Bus",
    //itemImage: "https://goo.gl/cGP6cH",
  ),
  Store.items(
    itemName: "Petrol",
    //itemImage: "https://goo.gl/u2qZQB",
  ),

  Store.items(
    itemName: "Events",
    //itemImage: "https://goo.gl/vCn5r5",
  ),

];
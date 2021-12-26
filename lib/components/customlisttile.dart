import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/pages/articledetails.dart';
//ignore_for_file:prefer_const_constructors
Widget CustomListTile(Article article,BuildContext context){
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Articlepage(
                article: article,
              )));
    },
    child: Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
         borderRadius: BorderRadius.circular(18.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 2.0
          )
        ],

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(article.urlToImage),
                
              ),
              borderRadius: BorderRadius.circular(8.0)
            ),
          ),
          SizedBox(height: 8.0,),
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30.0)
            ),
            child: Text(article.source.name,style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 8.0,),
          Text(article.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)

        ],
      ),
    ),
  );
}
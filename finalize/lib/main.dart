import 'package:finalize/detailspage.dart';
import 'package:finalize/models.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});
 
 var players= [
  Players(
    name: 'Cristiano Ronaldo',
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkFFVGJeU1caNna5KWD17Ul0BqoKLsq_BYsw&usqp=CAU',
    price: "200000000 Million"),
  Players(
    name: 'Leo Messi',
    imgUrl:
        'https://media.cnn.com/api/v1/images/stellar/prod/221127164140-lionel-messi-inter-miami-rumors-spt-intl.jpg?c=original',
        price: "500000000 Million",
  ),
  Players(
    name: 'Zlatan Ibrahimovic',
    imgUrl:
        'https://ichef.bbci.co.uk/onesport/cps/624/cpsprodpb/5AF7/production/_129978232_gettyimages-1474402333.jpg',
        price: "10000000 Million ",
  ),
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(
          child: Text('FP Prices',
          ),
        ),
        ),
        body: Center(
          child: ListView.builder(itemCount:players.length,
          itemBuilder:(context, index){
            return ListTile(
              leading: Image.network(players[index].imgUrl),
              title: Text(players[index].name),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(yousef: players[index])));
                },
                icon: Icon(Icons.account_circle_rounded),

              ),
              );
          },
           ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Dtails extends StatelessWidget {
  String title;
  // List<dynamic>
  Map lis;
  Dtails({required this.title,required this.lis});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("detils")),
       body:// Center(child: Text("$title + ${lis}")),
      ListView(children: [
        Image(image: NetworkImage(lis["image_link"]),fit: BoxFit.cover,),
        Center(child: Text('${lis["name"]}',style: Theme.of(context).textTheme.headline4,)),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                title:Text("origin",style: Theme.of(context).textTheme.headline6,) ,
                trailing: Text(lis["origin"],style: Theme.of(context).textTheme.headline6),
              ),
              ListTile(
                title:Text("family_friendly",style: Theme.of(context).textTheme.headline6,) ,
                trailing: Text(lis["family_friendly"].toString(),style: Theme.of(context).textTheme.headline6),
              ),
              ListTile(
                title:Text("min_weight",style: Theme.of(context).textTheme.headline6,) ,
                trailing: Text(lis["min_weight"].toString(),style: Theme.of(context).textTheme.headline6),
              ),
              ListTile(
                title:Text("max_weight",style: Theme.of(context).textTheme.headline6,) ,
                trailing: Text(lis["max_weight"].toString(),style: Theme.of(context).textTheme.headline6),
              ),
              ListTile(
                title:Text("min_life_expectancy",style: Theme.of(context).textTheme.headline6,) ,
                trailing: Text(lis["min_life_expectancy"].toString(),style: Theme.of(context).textTheme.headline6),
              ),
              ListTile(
                title:Text("max_life_expectancy",style: Theme.of(context).textTheme.headline6,) ,
                trailing: Text(lis["max_life_expectancy"].toString(),style: Theme.of(context).textTheme.headline6),
              ),
              ListTile(
                title:Text("general_health",style: Theme.of(context).textTheme.headline6,) ,
                trailing: Text(lis["general_health"].toString(),style: Theme.of(context).textTheme.headline6),
              ),
              const SizedBox(height: 100.0,)
            ],
          ),
        ),
      ],)
    );
  }
}
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {

  var images = [
    "assets/images/background.jpg",
    "assets/images/download.jpg",
    "assets/images/pexels-photo-587441.jpeg",
    "assets/images/floral_frame_.png",
    "assets/images/Logo.png"
  ];


  @override
  Widget build(BuildContext context) {

    Column column(){
      return Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                focusColor: Colors.orange,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(color: Colors.black26),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Persian tabriz',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text('10,000 results',style: TextStyle(color: Colors.black26,fontWeight: FontWeight.w400,fontSize: 12),)
                  ],
                ),
                Card(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){},
                      child: const Row(
                        children: [
                          Icon(Icons.filter_alt_outlined,color: Colors.black26,),
                          Text('filter',style: TextStyle(color: Colors.black26),),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    }

    GridView gridView(){
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11
        ),
        itemCount: 15,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Card(
                    child: Image.asset(
                      images[1],
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text('Persian tabriz',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Rs 12,999',style: TextStyle(color: Colors.black26,fontSize: 12),),
                          Text('151x102 cm',style: TextStyle(color: Colors.black26,fontSize: 12),)
                        ],),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined))
                  ],
                )
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              column(),
              SizedBox(
                height: 600,
                  child: gridView())
            ],
          ),
        ),
      ),
    );
  }
}

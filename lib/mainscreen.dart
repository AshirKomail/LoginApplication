import 'package:flutter/material.dart';
import 'shopmaterials.dart';


class mainscreen extends StatefulWidget {
  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {

  final List<String> _listItems = [
    'images/asd.png',
    'images/coding.jpg',
    'images/crop.jpg',
    'images/modest.jpg',
    'images/newpic.jpeg',
    'images/wall.jpg',
    'images/wallpaper.jpg',
    'images/wallpaper1.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              title: Text('bookmark'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_call),
              title: Text('call'),
            ),

          ],
      ),

      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              accountEmail: Text('Ashirkomail@gmail.com',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Raleway',
                color: Colors.black,
              ),
              ),
              accountName: Text('Ashir Komail',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  color: Colors.black,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/wall.jpg',),

              ),
            ),
              ListTile(
                trailing: Icon(Icons.check,
                color: Colors.black,
                ),
                title: Text('Product',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                  ),
                ),
                subtitle: Text('Ashirkomail@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                  ),
                ),
                leading: Icon(Icons.refresh),

              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(thickness: 0,color: Colors.grey,),
            ),
            ListTile(
              trailing: Icon(Icons.check,
                color: Colors.black,
              ),
              title: Text('Product',
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
              subtitle: Text('Ashirkomail@gmail.com',
                style: TextStyle(
                  fontFamily: 'Raleway',
                ),
              ),
              leading: Icon(Icons.refresh),

            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.all(8.0),
            child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
                child: Icon(
                Icons.search),
            ),
          ),
        ],
      ),

      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('images/asd.png'),
                    fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(.4),
                        Colors.white.withOpacity(0),
                      ],
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('Hello Markhoor',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Raleway',
                      ),
                    ),
                     SizedBox(height: 20,),

                    
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> shopmaterials()));
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('Shop Now',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Raleway',
                          ),
                        ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                  ],
                ),
              ),
            ),
          ),
          Expanded(

            child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
            ),
                padding: EdgeInsets.all(10),

              children: _listItems.map((item)=> Card(
                color: Colors.transparent,
                elevation: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ).toList()
            ),

          ),
        ],
      ),

    );
  }
}

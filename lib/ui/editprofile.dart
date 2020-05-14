
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:honeybee/ui/listview.dart';
import 'package:honeybee/utils/string.dart';

void main() => runApp(new EditProfile());

class EditProfile extends StatelessWidget {

  final List tags = [
    "↑Lv 10",
    "💎 50K",
    "♀ Female",
    '🌝 Happy face',
  ];

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: null,
      body: new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              Container(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(child:
                        Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 ')
                            )
                        ),
                      ),)
                    ],
                    ),
                    Positioned(
                      top: 120.0,
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://i.pinimg.com/originals/0b/c0/be/0bc0be8eebb2988d7dd5b814e8d04173.jpg'),
                            ),
                            border: Border.all(
                                color: Colors.white,
                                width: 4.0
                            )
                        ),
                      ),
                    ),
                  ],),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 110.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Amelia🌝', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0
                    ),),
                    SizedBox(width: 5.0,),
                    /*Icon(Icons.check_circle, color: Colors.blueAccent,)*/
                  ],
                ),
              ),

              SizedBox(height: 5.0,),
              Container(
                child: Center(
                  child: Text(
                    "ID" +
                        ' ' +
                        '100025'+
                        ' ' +
                        "|" +
                        ' ' +
                        "India",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 5.0,),
              Container(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tags.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black)),
                        margin: const EdgeInsets.only(right: 5),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                          child: Text(
                            tags[index],
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: 10.0,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.add,color: Colors.black),
                        ),
                        Text('follow',style: TextStyle(
                            color: Colors.black
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.message,color: Colors.black),
                        ),
                        Text('Message',style: TextStyle(
                            color: Colors.black
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.more_vert,color: Colors.black),
                          onPressed: (){
                            _showMoreOption(context);
                          },
                        ),
                        Text('More',style: TextStyle(
                            color: Colors.black
                        ),)
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(height: 10.0,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text("12K",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,)),
                              Text("Friends",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,)),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Listview(),
                              ),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text("13K",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,)),
                              Text("Fans",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,)),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Listview(),
                              ),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text("9k",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,)),
                              Text("Followers",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,)),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Listview(),
                              ),
                            );
                          },
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text("102K",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,)),
                              Text("B-Gold",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,)),
                            ],
                          ),
                          onPressed: () {

                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.0,),
              Container(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Image(
                        image: AssetImage(
                          "assets/profile/Medal.png",
                        ),
                        fit: BoxFit.fill,
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 5.0,),
                      Text('Fame Medal',style: TextStyle(
                          fontSize: 18.0
                      ),),
                    ],),
                    SizedBox(height: 10.0,),

                    Row(children: <Widget>[
                      Icon(Icons.home),
                      SizedBox(width: 5.0,),
                      Text('Lives in',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('Banglore',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],),
                    SizedBox(height: 10.0,),
                    Row(children: <Widget>[
                      Icon(Icons.location_on),
                      SizedBox(width: 5.0,),
                      Text('From',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('India',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],),
                    SizedBox(height: 10.0,),
                /*    Row(children: <Widget>[
                      Icon(Icons.list),
                      SizedBox(width: 5.0,),
                      Text('Followed by',style: TextStyle(
                          fontSize: 18.0
                      ),),
                      SizedBox(width: 5.0,),
                      Text('100K people',style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),)
                    ],),*/
                    SizedBox(height: 5.0,),
                  /*  Row(children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          child: Text('see more..'),
                        ),
                      )
                    ],),*/
                    Container(
                      height: 10.0,
                      child:
                      Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text('Photos',style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),)),
                    Container(child:
                     Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          Expanded(
                              child: Card(
                                child:
                                Image.network('https://images.pexels.com/photos/1580271/pexels-photo-1580271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                              )
                          ),
                          Expanded(
                              child: Card(
                                child:
                                Image.network('https://desigirlphotos.com/wp-content/uploads/2020/04/pexels-photo-1580274.jpeg'),
                              )
                          )
                        ],),
                        Row(children: <Widget>[
                          Expanded(
                              child: Card(
                                child:
                                Image.network('https://i.pinimg.com/originals/34/61/e6/3461e6bd6413977353c3f66883ad3584.jpg'),
                              )
                          ),
                          Expanded(
                              child: Card(
                                child:
                                Image.network('https://www.desicomments.com/wp-content/uploads/2018/01/Pic-Of-Actress-Kanika-Mann.jpg'),
                              )
                          ),
                          Expanded(
                              child: Card(
                                child:
                                Image.network('https://www.desicomments.com/wp-content/uploads/2018/01/Picture-Of-Kanika-Mann-Looking-Lovely.jpg'),
                              )
                          )
                        ],)
                      ],
                    ),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  _showMoreOption(BuildContext context) {
    showDialog<Dialog>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              SimpleDialogOption(
                child: const Text('Block'),
                onPressed: () {
                  Fluttertoast.showToast(msg: reportMessage);
                },
              ),
              SimpleDialogOption(
                child: const Text('Report'),
                onPressed: () {
                  Fluttertoast.showToast(msg: blockMessage);
                },
              ),
            ],
          );
        });
  }
}
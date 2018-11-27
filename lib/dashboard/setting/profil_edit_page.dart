import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Text('Profile Edit',
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w300))
            ],
          ),
        ),
        resizeToAvoidBottomPadding: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
              padding: EdgeInsets.only(top: 110.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Fullname',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.yellowAccent[700]))),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.yellowAccent[700]))),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Phone',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.yellowAccent[700]))),
                  ),
                  SizedBox(height: 172.0),
                ],
              )),
          ButtonHero(),
          // SizedBox(height: 15.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text(
          //       'New to Spotify?',
          //       style: TextStyle(
          //         fontFamily: 'Montserrat',
          //       ),
          //     ),
          //     SizedBox(width: 5.0),
          //     InkWell(
          //       child: Text('Register',
          //           style: TextStyle(
          //               color: Colors.yellowAccent[700],
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               decoration: TextDecoration.underline)),
          //     )
          //   ],
          // )
        ]));
  }
}

class ButtonHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Material(
            elevation: 1.0,
            borderRadius: BorderRadius.circular(12.0),
            shadowColor: Colors.black,
            color: Colors.transparent,
            child: InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => EditProfilePage())),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      gradient: LinearGradient(
                          colors: [
                              Color(0xFF1e272e),
                              Color(0xFF1e272e)])),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: new Text('Edit Profile',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600)),
                  ))),
            ),
          ),

          /// Buy button
          // new Hero(
          //   tag: 'Edit',
          //   child: new MaterialButton(
          //     // => buyPlant(),
          //     onPressed: () {},
          //     color: Colors.black,
          //     child: new Padding(
          //       padding: const EdgeInsets.all(24.0),
          //       child: new Text('Edit Profile',
          //           style: new TextStyle(
          //               color: Colors.white,
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w600)),
          //     ),
          //   ),
          // ),
        ]);
  }
}

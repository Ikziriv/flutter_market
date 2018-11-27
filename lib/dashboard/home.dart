import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// Pages
import 'shop/shop_lists_page.dart';
import 'reviews/review_lists_page.dart';
import 'setting/setting.dart';
import 'setting/profile.dart';
import 'chat_page/chat_lists_page.dart';
import 'bank/bank_lists_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Widget _buildTextButton(String title, bool isOnLight) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Text(title,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: isOnLight ? Colors.black : Colors.white,
          )),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: new IconButton(
          onPressed: () => showAboutDialog(
              context: context,
              applicationIcon: new Container(
                  width: 60.0,
                  child: new Image.asset('assets/anagatalogo.png')),
              applicationLegalese:
                  'E-commerce app concept.\n\nMade by \nAnagata Dev.'),
          icon: new Icon(Icons.sort, color: Colors.black),
        ),
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text('Dashboard',
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w300))
          ],
        ),
        // actions: [
        //   _buildTextButton('keluar'.toUpperCase(), true),
        // ],
      ),
      backgroundColor: Colors.white,
      body: _buildHomePage(context),
    );
  }

  _buildHomePage(BuildContext context) {
    return StaggeredGridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 14.0,
      mainAxisSpacing: 14.0,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      children: <Widget>[
        _buildTile(
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Colors.black,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            gradient: LinearGradient(colors: [
                              Color(0xFF1e272e),
                              Color(0xFF1e272e)
                            ])),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.account_circle,
                              color: Colors.white, size: 30.0),
                        ))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Profile',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20.0)),
                                  Text('Setting',
                                      style: TextStyle(
                                          color: Color(0xFF00d8d6),
                                          fontSize: 13.0)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ProfilePage())),
        ),
        _buildTile(
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Colors.black,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            gradient: LinearGradient(colors: [
                              Color(0xFF1e272e),
                              Color(0xFF1e272e)
                            ])),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.settings_applications,
                              color: Colors.white, size: 30.0),
                        ))),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20.0)),
                  Text('Setting',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0)),
                  Text('Panel',
                      style:
                          TextStyle(color: Color(0xFF00d8d6), fontSize: 13.0)),
                ]),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => SettingPage())),
        ),
        _buildTile(
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Colors.black,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            gradient: LinearGradient(colors: [
                              Color(0xFF1e272e),
                              Color(0xFF1e272e)
                            ])),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.message,
                              color: Colors.white, size: 30.0),
                        ))),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20.0)),
                  Text('Message',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0)),
                  Text('Group',
                      style:
                          TextStyle(color: Color(0xFF00d8d6), fontSize: 13.0)),
                ]),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ChatListsPage())),
        ),
        _buildTile(
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Shop Items',
                          style: TextStyle(color: Colors.black45)),
                      Text('173',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 34.0))
                    ],
                  ),
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Colors.black,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            gradient: LinearGradient(colors: [
                              Color(0xFF1e272e),
                              Color(0xFF1e272e)
                            ])),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Icon(Icons.store,
                              color: Colors.white, size: 30.0),
                        ))),
                  ),
                ]),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ShopListsPage())),
        ),
        _buildTile(
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Colors.black,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            gradient: LinearGradient(colors: [
                              Color(0xFF1e272e),
                              Color(0xFF1e272e)
                            ])),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.pie_chart,
                              color: Colors.white, size: 30.0),
                        ))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text('Total Views',
                          style: TextStyle(color: Colors.black45)),
                      Text('265K',
                          style: TextStyle(
                              color: Color(0xFF00d8d6),
                              fontWeight: FontWeight.w400,
                              fontSize: 34.0))
                    ],
                  ),
                ]),
          ),
        ),
        _buildTile(
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Colors.black,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            gradient: LinearGradient(colors: [
                              Color(0xFF1e272e),
                              Color(0xFF1e272e)
                            ])),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child:
                              Icon(Icons.star, color: Colors.white, size: 30.0),
                        ))),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20.0)),
                  Text('Rating',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0)),
                  Text('Items',
                      style: TextStyle(color: Colors.black45, fontSize: 13.0)),
                ]),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ReviewListsPage())),
        ),
        _buildTile(
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Colors.black,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            gradient: LinearGradient(colors: [
                              Color(0xFF1e272e),
                              Color(0xFF1e272e)
                            ])),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.notifications,
                              color: Colors.white, size: 30.0),
                        ))),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20.0)),
                  Text('Notification',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0)),
                  Text('All ',
                      style: TextStyle(color: Colors.black45, fontSize: 13.0)),
                ]),
          ),
        ),
        _buildTile(
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Colors.black,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            gradient: LinearGradient(colors: [
                              Color(0xFF1e272e),
                              Color(0xFF1e272e)
                            ])),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.account_balance,
                              color: Colors.white, size: 30.0),
                        ))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Bank',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20.0)),
                                  Text('List',
                                      style: TextStyle(
                                          color: Color(0xFF00d8d6),
                                          fontSize: 13.0)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => BankListPage())),
        ),
      ],
      staggeredTiles: [
        StaggeredTile.extent(2, 110.0),
        StaggeredTile.extent(1, 170.0),
        StaggeredTile.extent(1, 170.0),
        StaggeredTile.extent(2, 220.0),
        StaggeredTile.extent(2, 110.0),
        StaggeredTile.extent(1, 170.0),
        StaggeredTile.extent(1, 170.0),
        StaggeredTile.extent(2, 110.0),
      ],
    );
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
      elevation: 7.0,
      borderRadius: BorderRadius.circular(12.0),
      shadowColor: Colors.white,
      color: Colors.transparent,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              gradient: LinearGradient(
                  colors: [Color(0xFFffffff), Color(0xFFffffff)])),
          child: InkWell(
              // Do onTap() if it isn't null, otherwise do print()
              onTap: onTap != null
                  ? () => onTap()
                  : () {
                      print('Not set yet');
                    },
              child: child)),
    );
  }
}

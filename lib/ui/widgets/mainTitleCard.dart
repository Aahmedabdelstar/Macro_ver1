import 'package:flutter/material.dart';
import 'package:macro/ui/home_page_new.dart';
import 'package:macro/ui/login_screen.dart';
import 'package:macro/ui/user_profile_screen.dart';
import '../delivery_screen.dart';
import '../main_screen.dart';
import '../renewal_screen.dart';

class MainTitleCard extends StatefulWidget{

  String cardImage;
  String cardTitle;
  MainTitleCard({this.cardImage,this.cardTitle});
  _MainTitleCard createState()=> new _MainTitleCard();
}

class _MainTitleCard extends State<MainTitleCard>{


  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Column(
        children: <Widget>[
          Container(
            height: 70,
            color: Colors.transparent,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: InkWell(                    ////////- to handle action on main menu in all screen
                onTap: (){

                 if(widget.cardTitle=='Delivery')
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DeliveryScreen()));
                  }
                  else if(widget.cardTitle=='Home')
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
                  } else if(widget.cardTitle=='FirstPage')
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePageNew()));
                  }else if(widget.cardTitle=='Profile')
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LogInScreen()));
                  }else if(widget.cardTitle=='CustomerProfile')
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> UserProfileScreen()));
                  }else if(widget.cardTitle=='logout')
                  {
                    _showDialogSecond(context, "Are You want to Logout ?");
                  }else if(widget.cardTitle=='RenewalScreen')
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> RenewalScreen()));
                  }


                },
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    height: 150,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2000.0),
                        child: Image.asset(
                          widget.cardImage,
                          fit: BoxFit.contain,
                        ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}


///--- this alert Dialog for customer if (he choose his location befor)
void _showDialogSecond(BuildContext context, String bodyMessage) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      backgroundColor: Colors.black87,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 40,
              child: Icon(
                Icons.warning,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(bodyMessage,
              style: TextStyle(fontSize: 18.0,color: Colors.white),
            ), /////////localiz
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                color: Colors.black87,
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LogInScreen()));
                },
                child: Container(
                    child: Text(
                        "Confirm",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.white))),
              ),
              RaisedButton(
                color: Colors.black87,
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Container(
                    child: Text(
                        "Cancel",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.white))),
              )
            ],
          )
        ],
      ),
    ),
  );
}

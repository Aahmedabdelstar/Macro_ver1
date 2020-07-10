import 'package:flutter/material.dart';
import '../constant/images.dart';
import 'widgets/mainTitleCard.dart';

class MainScreen extends StatefulWidget {
  _MainScreen createState() => new _MainScreen();
}

class _MainScreen extends State<MainScreen> {



  @override
  Widget build(BuildContext context) {
    ///- clculate size of width and height of mobile screen
    /// put all widget byProportion and fit with size of mobile to be responsive with all screens
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    Widget bigCircle = new Container(
      width: screenWidth,
      height: screenWidth-40,
      decoration: BoxDecoration(
//          borderRadius: BorderRadius.only(topRight:  Radius.circular(40)),
          border: Border.all(width: 3,color: Colors.black,style: BorderStyle.solid),
          shape: BoxShape.circle
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[


                  /////- Welcome with user (if he loged In) <<< not apear if he not logIN
                  Padding(
                    padding: EdgeInsets.only(top:screenheight*.03,left: 10,right: 10),
                    child: Container(
                      height: screenheight*.16,
                      color: Colors.black87.withOpacity(.6,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Hello",style: TextStyle(color: Colors.white,fontSize: 20),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Ahmed abdelstar",style: TextStyle(color: Colors.white,fontSize: 20),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:5.0,bottom: 5),
                                  child: Text("Here's what you're having",
                                    style: TextStyle(color: Colors.white,fontSize: 18),),
                                ),
                              ],
                            ),
                          ),
                          MainTitleCard(cardImage: Images.mainTitleCustomerSuport),

                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 5,right: 5,top:screenheight*.2),
                    child: Container(
                      height: screenheight*.78,
                      width: screenWidth ,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Images.loginBackground),
                            fit: BoxFit.fill),
                      ),
                      child:Stack(
                        children: <Widget>[

                          ////- big Circle
                          Padding(
                              padding: EdgeInsets.only(top: screenheight * .15,),
                              child:bigCircle
                          ),

//                          /// left Center
//                          Padding(
//                            padding: EdgeInsets.only(top: screenheight * .32,left: screenWidth*.07, right: screenWidth*.1, ),
//                            child:InkWell(
//                                child: new MainTitleCard(
//                                  cardImage: Images.mainTitleHome,cardTitle: "CompanyProfile",
//                                )
//                            ),
//                          ),
//
//                          ////- right Center
//                          Padding(
//                            padding: EdgeInsets.only(top: screenheight * .34,left: screenWidth*.71, ),
//                            child:InkWell(
//                                onTap: () {},
//                                child: new MainTitleCard(
//                                  cardImage: Images.mainTitleCustomerSuport,cardTitle: 'customer support',
//                                )),
//                          ),

                          /// center center
                          Padding(
                            padding: EdgeInsets.only(top: screenheight * .33,left: screenWidth*.39, right: screenWidth*.1, ),
                            child:InkWell(
                                child: new MainTitleCard(
                                  cardImage: Images.mainTitleProfileUser,cardTitle: "CustomerProfile",
                                )),
                          ),

                          /// center Top
                          Padding(
                            padding: EdgeInsets.only(top: screenheight * .16,left: screenWidth*.4, right: screenWidth*.1, ),
                            child:InkWell(
                                onTap: () {},
                                child: new MainTitleCard(
                                  cardImage: Images.mealIcon,cardTitle: "Subscrscrption Plan",
                                )),
                          ),

                          /// bottom center
                          Padding(
                            padding: EdgeInsets.only(top: screenheight * .53,left: screenWidth*.38, right: screenWidth*.1, ),
                            child:new MainTitleCard(cardImage: Images.renewalIcon,cardTitle: 'RenewalScreen',),
                          ),



                          /// right top
                          Padding(
                            padding: EdgeInsets.only(top: screenheight * .25,left: screenWidth*.68,  ),
                            child:InkWell(
                                onTap: () {},
                                child: new MainTitleCard(
                                  cardImage: Images.alergyIcon,cardTitle: "DislikeScreen",
                                )),
                          ),

                          /// left top
                          Padding(
                            padding: EdgeInsets.only(top: screenheight * .24,left: screenWidth*.11, right: screenWidth*.1, ),
                            child:InkWell(
                                onTap: () {},
                                child: new MainTitleCard(
                                  cardImage: Images.teamsIcon,cardTitle: 'TeamsScreen',
                                )),
                          ),

                          /// left bottom
                          Padding(
                            padding: EdgeInsets.only(top: screenheight * .42,left: screenWidth*.09, right: screenWidth*.1, ),
                            child:InkWell(
                                onTap: () {},
                                child: new MainTitleCard(
                                  cardImage: Images.mainTitleDelivery,cardTitle: 'Delivery',
                                )),
                          ),

                          /// right bottom
                          Padding(
                            padding: EdgeInsets.only(top: screenheight * .435,left: screenWidth*.675,  ),
                            child:InkWell(
                                onTap: () {},
                                child: new MainTitleCard(
                                    cardImage: Images.mainTitleIcon,cardTitle: 'AmbassadorScreen',
                                )),
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

    );
  }
}


void _showDialogFrist(BuildContext context, String bodyMessage) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                child: Text(
                  bodyMessage,
                  style: TextStyle(fontSize: 18.0),
                ), /////////localiz
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Color.fromRGBO(33, 212, 147, 1),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        child:Text('OK',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.white))),
                  )
                ],
              )
            ],
          ),
        );
      });
}

///--- this alert Dialog for customer if (he choose his location befor)
void _showDialogSecond(BuildContext context, String bodyMessage) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                Icons.map,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text(bodyMessage,
              style: TextStyle(fontSize: 18.0),
            ), /////////localiz
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                color: Color.fromRGBO(33, 212, 147, 1),
                onPressed: () async {
                },
                child: Container(
                    child: Text(
                            "ProductDetailstPage.AlertDialogConfirmButton",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.white))),
              ),
              RaisedButton(
                color: Color.fromRGBO(33, 212, 147, 1),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Container(
                    child: Text(
                            "ProductDetailstPage.AlertDialogCancelButton",
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

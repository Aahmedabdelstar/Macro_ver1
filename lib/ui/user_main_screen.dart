import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macro/ui/user_profile_screen.dart';
import '../constant/images.dart';
import 'widgets/mainTitleCard.dart';


class UserMainScreen extends StatefulWidget {
  _UserMainScreen createState() => _UserMainScreen();
}

class _UserMainScreen extends State<UserMainScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    ///- clculate size of width and height of mobile screen
    /// put all widget byProportion and fit with size of mobile to be responsive with all screens
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: screenheight * .08,
                      width: screenWidth * .3,
                      child: Center(
                        child: Image.asset(Images.macroTitle),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:screenheight*.05),
                      child: Container(
                        height: screenheight*.18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Images.mainTitleBackground),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            MainTitleCard(cardImage: Images.mainTitleHome,cardTitle: 'Home',),
                            MainTitleCard(cardImage: Images.mainTitleDelivery,cardTitle: 'Delivery',),
                            MainTitleCard(cardImage: Images.mainTitleProfile),
                            MainTitleCard(cardImage: Images.mainTitleSubscrscrptionPlan,cardTitle: "Subscrscrption Plan",),
                            MainTitleCard(cardImage: Images.mainTitleCustomerSuport,cardTitle: 'customer support',),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5,right: 5,top:screenheight*.2),
                      child: SizedBox(
                        height: screenheight*.19,
                        width: screenWidth ,
                        child: Center(
                          child: Image.asset(Images.infoScreenWelcomeWord),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screenheight*.4),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> UserProfileScreen()));
                              },
                              child: SizedBox(
                                child: Image.asset(Images.profileSetting),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text("Profile Setting", style: TextStyle(fontSize: 15,color: Colors.black)),
                            SizedBox(height: 20),
                            InkWell(
                              onTap: (){
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentHistory()));
                              },
                              child: SizedBox(
                                child: Image.asset(Images.yourPayment),
                              ),
                            ),
                            Text("Your Payments", style: TextStyle(fontSize: 15,color: Colors.black)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ],
        ),

    );
  }
}

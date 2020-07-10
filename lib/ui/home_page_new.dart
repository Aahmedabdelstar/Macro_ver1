import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/images.dart';
import 'widgets/mainTitleCard.dart';

class HomePageNew extends StatefulWidget {
  //String numberOfDays;
  //String catogry;


  //HomePageNew({});

  _HomePageNew createState() => _HomePageNew();
}

class _HomePageNew extends State<HomePageNew> {



  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    ///- clculate size of width and height of mobile screen
    /// put all widget byProportion and fit with size of mobile to be responsive with all screens
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    Widget bigCircle = new Container(
      width: screenWidth,
      height: screenWidth-40,
      decoration: new BoxDecoration(
        color: Colors.white.withOpacity(.9,),
        shape: BoxShape.circle,
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
                  SizedBox(
                    height: screenheight * .08,
                    width: screenWidth * .3,
                    child: Center(
                      child: Image.asset(Images.macroTitle),
                    ),
                  ),

                  ///- Card hold all informations
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenheight * .15, left: 20, right: 20),
                    child: Container(
                      height: screenheight * .75,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              width: 3,
                              color: Colors.black,
                              style: BorderStyle.solid)),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        top: screenheight * .17, left: screenWidth*.2, right: 20),
                    child:Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            Images.torsoIcon,
                            color: Colors.white,
                            width: screenWidth * .2,
                            height: screenheight * .1,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 2,
                            height: screenheight * .08,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .18, left: screenWidth*.6, right: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Plan",
                          style: TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          " Current",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 126, 181, 100),
                              fontSize: 15),
                        ),
                      ],
                    ),),
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .22, left: screenWidth*.6, right: 20),
                    child:Text("Ahmed abdelstar", style:
                    TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                  ////- big Circle
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .3,left: screenWidth*.07, right: screenWidth*.07, ),
                    child:bigCircle
                  ),

                  /// left Center
                  Padding(
                      padding: EdgeInsets.only(top: screenheight * .47,left: screenWidth*.07, right: screenWidth*.1, ),
                      child:InkWell(
//                          onTap: () {
//                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
//                          },
                          child: new MainTitleCard(
                              cardImage: Images.mainTitleHome,cardTitle: "Home",
                          )
                      ),
                  ),

                  ////- right Center
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .49,left: screenWidth*.74, ),
                    child:InkWell(
                        onTap: () {},
                        child: new MainTitleCard(
                            cardImage: Images.mainTitleCustomerSuport,cardTitle: 'customer support',
                        )),
                  ),

                  /// center center
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .48,left: screenWidth*.4, right: screenWidth*.1, ),
                    child:InkWell(
                       child: new MainTitleCard(
                            cardImage: Images.mainTitleProfileUser,cardTitle: "Profile",
                        )),
                  ),

                  /// center Top
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .31,left: screenWidth*.4, right: screenWidth*.1, ),
                    child:InkWell(
                        onTap: () {},
                        child: new MainTitleCard(
                            cardImage: Images.mainTitleSubscrscrptionPlan,cardTitle: "First Subscrscrption Plan",
                        )),
                  ),


                  /// bottom center
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .68,left: screenWidth*.4, right: screenWidth*.1, ),
                    child:InkWell(
                        onTap: () {},
                        child: new MainTitleCard(
                            cardImage: Images.dislikeIcon)),
                  ),


                  /// right top
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .37,left: screenWidth*.66,  ),
                    child:InkWell(
                        onTap: () {},
                        child: new MainTitleCard(
                            cardImage: Images.mainTitleProfile,cardTitle: 'Profile',
                        )),
                  ),

                  /// left top
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .36,left: screenWidth*.16, right: screenWidth*.1, ),
                    child:InkWell(
                        onTap: () {},
                        child: new MainTitleCard(
                            cardImage: Images.mainTitleDelivery,cardTitle: 'Delivery',
                        )),
                  ),

                  /// left bottom
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .6,left: screenWidth*.14, right: screenWidth*.1, ),
                    child:InkWell(
                        onTap: () {},
                        child: new MainTitleCard(
                            cardImage: Images.alergyIcon)),
                  ),

                  /// right bottom
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .62,left: screenWidth*.65,  ),
                    child:InkWell(
                        onTap: () {},
                        child: new MainTitleCard(
                            cardImage: Images.mainTitleIcon)),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/images.dart';
import 'widgets/mainTitleCard.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

class RenewalScreen extends StatefulWidget {

//  RenewalScreen({this.numberOfDays, this.catogry});

  _RenewalScreen createState() => _RenewalScreen();
}

class _RenewalScreen extends State<RenewalScreen> {

  DateTime choosenStartCalender = DateTime.now();
  DateTime choosenFinishedCalender = DateTime.now().add(Duration(days: 29));

  Future<Null> selectInitialDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: choosenStartCalender,
        firstDate: DateTime(2020, 1),
        lastDate: DateTime(2022));
    if (picked != null && picked != choosenStartCalender)
      setState(() {
        choosenStartCalender = picked;
      });
  }

  Future<Null> selectLastDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: choosenFinishedCalender,
        firstDate: DateTime(2020, 1),
        lastDate: DateTime(2022));
    if (picked != null && picked != choosenFinishedCalender)
      setState(() {
        choosenFinishedCalender = picked;
      });
  }


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
                    padding: EdgeInsets.only(top: screenheight * .05),
                    child: Container(
                      height: screenheight * .16,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Images.mainTitleBackground),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          MainTitleCard(
                            cardImage: Images.mainTitleHome,cardTitle: 'Home',),
                          MainTitleCard(cardImage: Images.mainTitleProfile,cardTitle: 'Profile',),
                          MainTitleCard(cardImage: Images.mainTitleSubscrscrptionPlan,cardTitle: "Subscrscrption Plan",),
                          MainTitleCard(cardImage: Images.mainTitleCustomerSuport,cardTitle: 'customer support',),
                          MainTitleCard(cardImage: Images.mainTitleDelivery,cardTitle: 'Delivery',),
//
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5, right: 5, top: screenheight * .16),
                    child: SizedBox(
                      height: screenheight * .19,
                      width: screenWidth,
                      child: Center(
                        child: Image.asset(Images.planMainScreenYourplanWord),
                      ),
                    ),
                  ),

                  ///- Card hold all informations
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenheight * .31, left: 20, right: 20),
                    child: Container(
                      height: screenheight * .65,
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
                        top: screenheight * .31, left: screenWidth*.2, right: 20),
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
                    padding: EdgeInsets.only(top: screenheight * .33, left: screenWidth*.6, right: 20),
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
                    padding: EdgeInsets.only(top: screenheight * .36, left: screenWidth*.6, right: 20),
                      child:Text("Ahmed abdelstar", style:
                            TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .41, left: screenWidth*.44,),
                    child: Image.asset(
                      Images.mealIcon,color: Colors.white,height: screenheight*.08,width: .1*screenWidth,
                    ),
                  ),

                  ////- Two Lines
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .49),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 2,
                          width: screenWidth*.3,
                          color: Colors.white,
                        ),
                        SizedBox(width: screenWidth*.05,),

                        SizedBox(width: screenWidth*.05,),
                        Container(
                          height: 2,
                          width: screenWidth*.3,
                          color: Colors.white,
                        ),

                      ],
                    ),
                  ),

                  /////--- Screen Details

                  ///- Layout contain information
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .52, left: 40,right: 40),
                    child: Container(
                      height: screenheight * .2,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              width: 2,
                              color: Colors.white,
                              style: BorderStyle.solid)),
                    ),
                  ),

                  ///- information
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .55,left: screenWidth*.15,right: screenWidth*.15),
                    child:Column(
                      children: <Widget>[

                        Row(
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text("Subscription Name : ",style: TextStyle(color: Colors.white,
                                fontSize: 15,fontWeight: FontWeight.bold)),
                            Expanded(
                              child: Text("First Fitness Program",
                                      style: TextStyle(color: Color.fromARGB(255, 126, 181, 100),
                                        fontSize: 15,fontWeight: FontWeight.bold)),
                            ),

                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: <Widget>[
                            SizedBox(height: 10,),
                              Text("Target : ",style: TextStyle(color: Colors.white,
                                  fontSize: 15,fontWeight: FontWeight.bold)),

                            Text("First Fitness Program",style: TextStyle(color: Color.fromARGB(255, 126, 181, 100),
                                fontSize: 15,fontWeight: FontWeight.bold))
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text("Period : ",style: TextStyle(color: Colors.white,
                                fontSize: 15,fontWeight: FontWeight.bold)),
                            Text("30 Days",style: TextStyle(color: Color.fromARGB(255, 126, 181, 100),
                                fontSize: 15,fontWeight: FontWeight.bold))
                          ],
                        ),


                      ],
                    ),
                  ),


                  ////- claender of duration
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .75,left: 40,right: 40),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: .38 * screenWidth,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      width: 1, color: Colors.grey)),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      //width: 100,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:5.0),
                                        child: Text(
                                          choosenStartCalender.day.toString()+"."+
                                              choosenStartCalender.month.toString()+"."+
                                              choosenStartCalender.year.toString(),
                                          style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: new Theme(
                                      data: Theme.of(context).copyWith(
                                        primaryColor: Colors.black,
                                        //primarySwatch: Colors,red,
                                        accentColor: Colors.black,
                                        splashColor: Colors.green,
                                        colorScheme: ColorScheme.light(primary: Colors.black),
                                        buttonTheme: ButtonThemeData(
                                            textTheme: ButtonTextTheme.primary
                                        ),
                                      ),
                                      child: new Builder(
                                          builder:(context)=>FlatButton(
                                          onPressed: () async{
                                            await selectInitialDate(context);
                                          },
                                          child: Image.asset(
                                            Images.userInfoCalendar,
                                            width: 18,
                                            height: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: .38 * screenWidth,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      width: 1, color: Colors.grey)),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      //width: 100,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:5.0),
                                        child: Text(
                                          choosenFinishedCalender.day.toString()+"."+
                                              choosenFinishedCalender.month.toString()+"."+
                                              choosenFinishedCalender.year.toString(),
                                          style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: new Theme(
                                      data: Theme.of(context).copyWith(
                                        primaryColor: Colors.black,
                                        //primarySwatch: Colors,red,
                                        accentColor: Colors.black,
                                        splashColor: Colors.green,
                                        colorScheme: ColorScheme.light(primary: Colors.black),
                                        buttonTheme: ButtonThemeData(
                                            textTheme: ButtonTextTheme.primary
                                        ),
                                      ),
                                      child: new Builder(
                                        builder: (context)=> FlatButton(
                                          onPressed: () async{
                                            await selectLastDate(context);
                                          },
                                          child: Image.asset(
                                            Images.userInfoCalendar,
                                            width: 18,
                                            height: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                  /////- buttons change , cancl and Confirm
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .85,left: 10,right: 10),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              child: RaisedButton(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0)),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                textColor: Colors.white,
                                child: Text(
                                  "Cancel",style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(

                              child: RaisedButton(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0)),
                                onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPlanScreenNew()));
                                },
                                textColor: Colors.white,
                                child: Text(
                                  "Change",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(

                              child: RaisedButton(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0)),
                                onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>UserMainScreen()));
                                },
                                textColor: Colors.white,
                                child: Text(
                                  "Confirm",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
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

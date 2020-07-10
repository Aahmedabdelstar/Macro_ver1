import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../constant/images.dart';
import 'user_main_screen.dart';
import 'widgets/mainTitleCard.dart';

class UserProfileScreen extends StatefulWidget {
  _UserProfileScreen createState() => _UserProfileScreen();
}

class _UserProfileScreen extends State<UserProfileScreen> {
  ///- to form and validate Data in form
  final formKey = new GlobalKey<FormState>();
  String username, changePassword;
  var _isLoading = false;                            ///- use that variable in loading progress

  ///- variable for choosenCalender
  //DateTime choosenCalender = DateTime.now();
  DateTime choosenCalender = DateTime.now();




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: choosenCalender,
        firstDate: DateTime(2020, 1),
        lastDate: DateTime(2022));
    if (picked != null && picked != choosenCalender)
      setState(() {
        choosenCalender = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    ///- clculate size of width and height of mobile screen
    /// put all widget byProportion and fit with size of mobile to be responsive with all screens
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: _isLoading,
        child: Stack(
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
                        height: screenheight*.19,
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
                      padding: EdgeInsets.only(left: 5,right: 5,top:screenheight*.17),
                      child: SizedBox(
                        height: 100,
                        width: screenWidth ,
                        child: Center(
                          child: Image.asset(Images.infoScreenWelcomeWord),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(left: .18 * screenWidth,top: screenheight*.009),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text("Your info", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                          SizedBox(height: 15),
                          Text("user name", style: TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold)),
                          SizedBox(height: 10),
                          Container(
                            height: 30,
                            width: .60 * screenWidth,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    width: 1, color: Colors.black)),
                            child: TextFormField(
                              onSaved: (value) => username = value,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text("Change password", style: TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold)),
                          SizedBox(height: 10),
                          Container(
                            height: 30,
                            width: .60 * screenWidth,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    width: 1, color: Colors.grey)),
                            child: TextFormField(
                              onSaved: (value) => changePassword = value,
                              keyboardType: TextInputType.text,
                            ),
                          ),

                          SizedBox(height: 12),
                          Row(
                            children: <Widget>[
                              Text(
                                "macro subscription ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "PLAN",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Container(
                              width: .60 * screenWidth,
                              height: 30,
                              child: RaisedButton(
                                color: Color.fromARGB(255,126,181,100),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(50.0)),
                                onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPlanScreenNew()));
                                },
                                child: Text(
                                  "macro subscription PLAN",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          SizedBox(height: 15),
                          Text("birth date", style: TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold)),
                          SizedBox(height: 12),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: .60 * screenWidth,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50)),
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
                                          padding: const EdgeInsets.only(left:20.0),
                                          child: Text(
                                            choosenCalender.day.toString()+"."+
                                            choosenCalender.month.toString()+"."+
                                            choosenCalender.year.toString(),
                                            style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Theme(
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
                                              await selectDate(context);
                                            },
                                            child: Image.asset(
                                              Images.userInfoCalendar,
                                              width: 20,
                                              height: 20,
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
                          SizedBox(height: 12),
                          Text("Change password", style: TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold)),
                          SizedBox(height: 10),
                          Container(
                            height: 30,
                            width: .60 * screenWidth,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    width: 1, color: Colors.grey)),
                            child: TextFormField(
                              onSaved: (value) => changePassword = value,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text("main address", style: TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold)),
                          SizedBox(height: 10),
                          Container(
                            height: 30,
                            width: .60 * screenWidth,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    width: 1, color: Colors.grey)),
                            child: TextFormField(
                              onSaved: (value) => changePassword = value,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: .60 * screenWidth,
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    width: 100,
                                    height: 30,
                                    child: RaisedButton(
                                      color: Colors.black87,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(50.0)),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      textColor: Colors.white,
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                Container(
                                    width: 100,
                                    height: 30,
                                    child: RaisedButton(
                                      color:Color.fromARGB(255,126,181,100),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(50.0)),
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserMainScreen()));
                                      },
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                              ],
                            ),
                          )





                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

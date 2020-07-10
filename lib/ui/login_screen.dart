import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macro/ui/main_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../constant/images.dart';
import 'user_main_screen.dart';
import 'widgets/mainTitleCard.dart';

class LogInScreen extends StatefulWidget {
  _loginScreen createState() => _loginScreen();
}

class _loginScreen extends State<LogInScreen> {
  ///- to form and validate Data in form
  final formKey = new GlobalKey<FormState>();
  String username, password;
  var _isLoading = false;

  ///- use that variable in loading progress

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
                        //margin: EdgeInsets.only(top:screenheight*.1),
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
                              MainTitleCard(cardImage: Images.mainTitleProfile),
                              MainTitleCard(cardImage: Images.mainTitleSubscrscrptionPlan,cardTitle: "Subscrscrption Plan",),
                              MainTitleCard(cardImage: Images.mainTitleCustomerSuport,cardTitle: 'customer support',),
                              MainTitleCard(cardImage: Images.mainTitleDelivery,cardTitle: 'Delivery',),
                            ],
                          ),
                        ),
                    ),

                  ],
                ),
                Container(
                      margin: EdgeInsets.only(top: 10),
                      width: screenWidth,
                      height: screenheight*.78,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Images.loginBackground),
                            fit: BoxFit.fill),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: .25 * screenWidth,top: screenheight*.1),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text("Log in", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                              SizedBox(height: 15),
                              Text("user", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
                                  onSaved: (value) => username = value,
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text("password", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: .60 * screenWidth,
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
                                            child: TextFormField(
                                              onSaved: (value) =>
                                                  username = value,
                                              keyboardType:
                                                  TextInputType.visiblePassword,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: FlatButton(
                                            onPressed: () {},
                                            child: Image.asset(
                                              Images.loginPageShowPassword,
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: .12 * screenWidth),
                                child:Container(
                                  width: 120,
                                  height: 30,
                                  child: RaisedButton(
                                    color: Colors.black87,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(50.0)),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>UserMainScreen()));
                                    },
                                    textColor: Colors.white,
                                    child: Text(
                                      "Log in",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding: EdgeInsets.only(left: .12 * screenWidth),
                                child:InkWell(
                                child: Text("Forget your password", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                onTap: (){},
                              ),),
                              SizedBox(height: 25),
                              Padding(
                                padding: EdgeInsets.only(left: .12 * screenWidth),
                                child:Container(
                                width: 120,
                                height: 30,
                                child: OutlineButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
                                  },
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),),
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

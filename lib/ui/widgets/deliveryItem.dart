import 'package:flutter/material.dart';
import 'package:macro/constant/images.dart';
import '../delivery_screen.dart';


class DelivaryItem extends StatefulWidget {
  final Key key;
  final DeliveryItem item;
  final ValueChanged<bool> isSelected;

  DelivaryItem({this.item, this.isSelected, this.key});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<DelivaryItem> {


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return InkWell(

        onTap: () {
          setState(() {

          });
        },
        child: FittedBox(
            fit: BoxFit.contain,
            child: Container(
                margin: EdgeInsets.only(right: 10.0, left: 10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Colors.white,
                  elevation: 3,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: (10.0), left: (10.0), right: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    new BorderRadius.all(Radius.circular(5.0))),
                            width: (170.0),
                            height: (30.0),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Text(
                                  "Company Name",
                                  style: new TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: (25.0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                          child: FittedBox(
                        fit: BoxFit.contain,
                        child: Container(
                            padding: EdgeInsets.only(right: 4, left: 4,top: 4),
                            height: (160.0),
                            width: (250.0),
                            child: Container(
                              height: (50.0),
                              width: (70.0),
                              child: SizedBox(
                                width: double.infinity,
                                child:Image.asset(Images.companyImage),
                              ),
                            )),
                      )),
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: (20), right: (20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: (12.0)),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "acompany@yahoo.com",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: (15),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      right: (10), left: 10, bottom: (10.0)),
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.green,
                                    size: (35),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ))));
  }
}

/*

Container(
        height: 300,
        child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: screenheight * .05),
                      child: Container(
                        width: 80,
                        height: 100,
                        //margin: EdgeInsets.only(right: 10.0, left: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              width: 3,
                              color: Colors.black,
                              style: BorderStyle.solid),
                          image: DecorationImage(
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                              image: AssetImage(widget.item.imageUrl,),
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screenheight * .2),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top:screenheight*.02),
                            child: Text(" Grilled \n ChickenMeal",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:screenheight*.01),
                            child: Text(" Grilled \n ChickenMeal",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:screenheight*.01),
                            child: Text(" Grilled \n ChickenMeal",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),

                          isSelected
                              ?Padding(
                            padding: EdgeInsets.only(top:screenheight*.03),
                            child: Icon(
                              Icons.check_circle,size: 25,
                              color: Colors.green,
                            ),
                          ): Container(),




                        ],
                      ),
                    ),

                  ],
                ),
      ),
 */

import 'package:flutter/material.dart';
import '../constant/images.dart';
import 'widgets/mainTitleCard.dart';
import 'widgets/deliveryItem.dart';


class DeliveryItem {
  String imageUrl;
  int rank;

  DeliveryItem(this.imageUrl, this.rank);
}

class DeliveryScreen extends StatefulWidget {
  _DeliveryScreen createState() => new _DeliveryScreen();
}



class _DeliveryScreen extends State<DeliveryScreen> {

  List<DeliveryItem> itemList;

  void initState() {
    loadList();
    super.initState();
  }

  loadList() {
    itemList = List();
    itemList.add(DeliveryItem(Images.grilledChickenMeal2, 1));
    itemList.add(DeliveryItem(Images.grilledChickenMeal2, 2));
    itemList.add(DeliveryItem(Images.grilledChickenMeal2, 3));
    itemList.add(DeliveryItem(Images.grilledChickenMeal2, 4));
    //itemList.add(DeliveryItem(Images.grilledChickenMeal2, 5));
    //itemList.add(DeliveryItem(Images.grilledChickenMeal2, 6));

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
                          MainTitleCard(cardImage: Images.mainTitleProfile,cardTitle: 'Profile',),
                          MainTitleCard(cardImage: Images.mainTitleDelivery),
                          MainTitleCard(cardImage: Images.mainTitleSubscrscrptionPlan,cardTitle: "Subscrscrption Plan",),
                          MainTitleCard(cardImage: Images.mainTitleCustomerSuport,cardTitle: 'customer support',),

                        ],
                      ),
                    ),
                  ),

                  ///- Card hold all informations
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenheight * .25, left: 20, right: 20),
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

                  ///-- arm Icon
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenheight * .25, left: screenWidth*.18, right: 20),
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

                  ///- Delivery Company
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .29, left: screenWidth*.5, right: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Delivery",
                          style: TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "  Companies",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 126, 181, 100),
                              fontSize: 20),
                        ),
                      ],
                    ),),

                  ////- Container has Layout Border contain Items
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .4, left: 40,right: 40),
                    child: Container(
                      height: screenheight * .45,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              width: 2,
                              color: Colors.white,
                              style: BorderStyle.solid)),

                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: screenheight * .44, left: screenWidth*.15,right: screenWidth*.15),
                    child: Container(
                      height: screenheight*.4,
                     // width: screenWidth-50,
                      child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: itemList.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.2,
                            crossAxisSpacing: 3,
                            mainAxisSpacing: 3,
                          ),
                          itemBuilder: (context, index) {
                            return DelivaryItem(
                                item: itemList[index],
                                key: Key(itemList[index].rank.toString()));
                          }),
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



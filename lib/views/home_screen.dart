import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app/main.dart';
import 'package:shopping_app/res/custom_widgets/custom_selector.dart';
import 'package:shopping_app/res/custom_widgets/custom_shape_clipper.dart';
import 'package:shopping_app/res/palette.dart';
import 'package:shopping_app/res/strings.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopHomeScreen()
        ],
      ),
    );
  }
}

class TopHomeScreen extends StatefulWidget {
  TopHomeScreen({Key key}) : super(key: key);

  _TopHomeScreenState createState() => _TopHomeScreenState();
}

class _TopHomeScreenState extends State<TopHomeScreen> {

  var selectedLocationIndex = 0;
  bool isFlightSelected = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400.0, 
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Palette.juicyOrange, 
                  Palette.oldOrange
                ]
              )
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.white),
                      SizedBox(width: 16.0),
                      PopupMenuButton(
                        child: Row(
                          children: <Widget>[
                            Text(AppStrings.locations[selectedLocationIndex], style: AppTextStyles.selectedDropDownTextStyle),
                            Icon(Icons.arrow_drop_down, color: Colors.white)
                          ],
                         ), 
                          itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                          PopupMenuItem(
                            child: Text(AppStrings.locations[0], style: AppTextStyles.dropDownTextStyle),
                            value: 0
                          ),
                          PopupMenuItem(
                            child: Text(AppStrings.locations[1], style: AppTextStyles.dropDownTextStyle),
                            value: 1
                          ),
                          PopupMenuItem(
                            child: Text(AppStrings.locations[2], style: AppTextStyles.dropDownTextStyle),
                            value: 2
                          ),
                          PopupMenuItem(
                            child: Text(AppStrings.locations[3], style: AppTextStyles.dropDownTextStyle),
                            value: 3
                          )
                        ],
                        onSelected: (index){
                          setState(() {
                            selectedLocationIndex = index;
                          });
                        }
                      ),
                      Spacer(),
                      Icon(Icons.settings, color: Colors.white)
                    ],
                  )
                ),
                SizedBox(height: 50),
                Text(
                  'Where would \nyou want to go?',
                  style: AppTextStyles.bigTittle,
                  textAlign: TextAlign.center
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    child: TextField( 
                      controller: TextEditingController(text: AppStrings.locations[0]),
                      style: AppTextStyles.textField ,
                      cursorColor: theme.primaryColor,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                        suffixIcon: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(30.0),
                          child: Icon(Icons.search, color: Colors.grey)
                        ),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      child: CustomSelector(Icons.flight_takeoff, 'Flights', isFlightSelected),
                      onTap: (){
                        setState(() {
                          isFlightSelected = !isFlightSelected;
                        });
                      },
                    ),
                    SizedBox(width: 20.0),
                    InkWell(
                      child: CustomSelector(Icons.hotel, 'Hotels', !isFlightSelected),
                      onTap: (){
                        setState(() {
                          isFlightSelected = !isFlightSelected;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          )
        )
      ],
    );
  }
}
import 'package:flow/constants.dart';
import 'package:flutter/material.dart';
import 'package:flow/Components/flow_maps.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flow/Components/circular_button.dart';


class FlowOrderScreen extends StatefulWidget {
  const FlowOrderScreen({Key? key}) : super(key: key);

  @override
  State<FlowOrderScreen> createState() => _FlowOrderScreenState();
}

class _FlowOrderScreenState extends State<FlowOrderScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeOut,
                    height: screenSize.height * .50,
                    margin: const EdgeInsets.only(top: kDefaultPadding),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kDefaultPadding2x)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(kDefaultPadding),
                        child: FlowMaps()),
                  ),
                  Positioned(
                    bottom: kDefaultPadding / 2,
                    right: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // toggle map type button
                        FlowCircularButton(
                          iconLink: 'assets/icons/svgs/map_change.svg',
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            Feedback.forTap(context);

                            ///TODO: add method to swtich map type
                          },
                        ),

                        FlowCircularButton(
                          iconLink: 'assets/icons/svgs/zoom_out.svg',
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            Feedback.forTap(context);

                            ///TODO: implement map resizing
                          },
                        ),

                        // SearchClosestSourceButton(),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding),
              Text(
                "Order",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 30),
              ),
              const SizedBox(height: kDefaultPadding ),
              Row(
                children: [
                  Text(
                "250",
                style: Theme.of(context)
                .textTheme.
                bodyText1!.copyWith(fontSize: 40,color: Theme.of(context).primaryColor),
                
              ),
              SizedBox(),
                
               Text(
                "FCFA",
                style: Theme.of(context)
                .textTheme.
                bodyText1!.copyWith(fontSize: 20),
                
              ),

              SizedBox(width: 25,),

              IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/svgs/heart.svg",
                          color: Theme.of(context).iconTheme.color,
                        )),
              Text(
                "40L",
                style: Theme.of(context)
                .textTheme.
                bodyText1!.copyWith(fontSize: 30),
                
              ),

              Container(
                width: 157,
                height: 48,
                // padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                  color: Theme.of(context).primaryColor.withOpacity(0.2)
                ),
                child: Row(
                        children: [

                          IconButton(
                            
                            onPressed: () {}, 
                            icon: Icon(
                              Icons.add_circle,
                          color: Theme.of(context).primaryColor,
                          size: 40,
                 )
                 ),
                 SizedBox(width: 20,),

                  Text(
                "2",
                style: Theme.of(context)
                .textTheme.
                bodyText1!.copyWith(fontSize: 30),
                
              ),
              SizedBox(width: 20,),

              IconButton(
                
                            onPressed: () {}, 
                            icon: Icon(
                              Icons.add_circle,
                          color: Theme.of(context).primaryColor,
                          size: 40,
                 )
                 ),


                        ],     

                ))
              
                ],
                
              ),
              const SizedBox(height: kDefaultPadding),
              
              
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Delivery Location",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 25,)),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                
                ],
              ),

              Row(children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2.0,color: Theme.of(context).primaryColor),
                    textStyle: const TextStyle(fontSize: 20, ),
                    fixedSize: Size(167, 50),
                    primary: Colors.white,
                    onPrimary: Theme.of(context).primaryColor,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(35)
                  )
                  ),
                  onPressed: () {}, 
                  icon: Icon(Icons.location_city_rounded), 
                  label: Text('Live Location')),
                    SizedBox(width: 40,),
                    ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2.0,color: Theme.of(context).primaryColor),
                    textStyle: const TextStyle(fontSize: 20, ),
                    fixedSize: Size(167, 50),
                    primary: Colors.white,
                    onPrimary: Theme.of(context).primaryColor,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(35)
                  )
                  ),
                  onPressed: () {}, 
                  icon: Icon(Icons.location_city_rounded), 
                  label: Text('Pick from Map')),
              ],),
              SizedBox(height: 10,),
              Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    
                            Text("Add Instructions for delivery",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 25,)),

                    
                  ],
                ),

                SizedBox(height: 40,),

                Center(
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {}, 
                        child: Text('Place Order'),
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 18, ),
                          fixedSize: Size(351, 50),
                              onPrimary: Colors.white,
                              primary: Theme.of(context).primaryColor,
                              shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(37)
                    )
                              

                        ),),
                    ],
                  ),
                )
              
            ],
          ),
        ),
      ),
      
    );
    
  }
}






























// import 'package:flow/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:provider/provider.dart';

// import '../../providers/auth_provider.dart';

// class FlowOrderScreen extends StatelessWidget {
//   static const id = "order screen";
//   const FlowOrderScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<FlowUserData>(
//       builder: (context, userData, child) {
//         if (userData.flowUser?.uid != null) {
//           return Scaffold(
//             body: Column(
//               children: const [
//                 Text("You have an account, now you can order"),
//                 ///TODO: Build ordering page
//               ],
//             ),
//           );
//         } else {
//           return Scaffold(
//               body: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//             children: [
//                    Text(" You need an account to place and order", style: Theme.of(context).textTheme.bodyText1, textAlign: TextAlign.center,),
                  
//                       const SizedBox(height: kDefaultPadding2x,),
//                   FlowButton(
//                       iconLink: "",
//                       onPressed: () {
//                         ///TODO: nav to sign in page
//                       },
//                       iconColor: Colors.white,
//                       label: "Sign In"),

//                       const SizedBox(height: kDefaultPadding,),
//                   FlowButton(
//                     isSecondary: true,
//                       iconLink: "",
//                       onPressed: () {
//                         ///TODO: nav to create account page
//                       },
//                       label: "Create Account")
//             ],
//           ),
//                 ),
//               ));
//         }
//       },
//     );
//   }
// }

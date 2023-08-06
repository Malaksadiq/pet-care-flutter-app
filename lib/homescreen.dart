import 'package:flutter/material.dart';
import 'package:flutter_luckypet_app/app_styles.dart';
import 'package:flutter_luckypet_app/size_config.dart';
import 'package:flutter_svg/svg.dart';

import 'buttom_navigation.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    List <String> dog=[
      
      'dog_marly.png',
      'dog_cocoa.png',
      'dog_walt.png',

    ];
    List <String>names=[
     'Marlay',
     'Cocao',
     'Walt',
    ];
    List <String> cat=[
      
      'cat_alyx.png',
      'cat_brook.png',
      'cat_marly.png',

    ];
    List <String>name=[
     'alyx',
     'brook',
     'marly',
    ];
    List <String>date=[
     '10/sep/2023',
     '12/sep/2023',
     '14/sep/2023',
    ];
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/nav_icon.svg"),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://img.lovepik.com/element/45016/4170.png_300.png'),
                  backgroundColor: Colors.amber,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 150,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/welcome_message.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 150,
                    bottom: 30,
                    right: 0,
                    top: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'hello, ',
                              style: kSourceSansProregular.copyWith(
                                  color: kBlack,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.5),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'sadiq 👋',
                              style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                                color: kBlack,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Ready for an amazing and lucky experiance  🐕🐕‍🦺',
                          style: kSourceSansProregular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            color: kBlack,
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: kPaddingHorizontal),
            decoration: BoxDecoration(
                // color: Colors.amber,
                ),
            height: 30,
            // width: 50,
            child: Row(
              children: [
                Text(
                  'Dogs 🐕‍🦺 ',
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                    color: kBlack,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 169,
            child: ListView.builder(
              itemCount:dog.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 169,
                  width: 150,
                  margin: EdgeInsets.only(
                      left: index == 0 ? 25 : 15,
                      right: index == dog.length - 1 ? 30 : 0),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 14,
                          offset: Offset(0, 3),
                          color: kBoxShadowColor.withOpacity(0.18))
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius:
                              BorderRadius.circular(kBorderRadiusList),
                          child: Image.asset(
                            'assets/images/${dog[index]}',
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // padding: EdgeInsets.symmetric(vertical:10,horizontal:5),
                            height: 24,

                            decoration: BoxDecoration(
                              color: kLightOrange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Banana',
                                style: kSourceSansProBold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 4
                                        ,color:kOrange 
                                        ),
                                        
                              ),
                            ),
                          ),
                          Icon(
                            Icons.favorite_outline,
                            size: 20,
                            color: Colors.red,
                          )
                        ],
                      ),
                      Text(
                        names[index],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3),
                      ),
                      Text(
                        date[index],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: kSourceSansProregular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3),
                      ),
                    ],
                  ),
                );
               
              },

            ),
          ),
          SizedBox(height: 30,),
            Container(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: kPaddingHorizontal),
            decoration: BoxDecoration(
                // color: Colors.amber,
                ),
            height: 30,
            // width: 50,
            child: Row(
              children: [
                Text(
                  'Cats 🐈  ',
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                    color: kBlack,
                  ),
                )
              ],
            ),
          ),

              SizedBox(
            height: 169,
            child: ListView.builder(
              itemCount: cat.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 169,
                  width: 150,
                  margin: EdgeInsets.only(
                      left: index == 0 ? 25 : 15,
                      right: index == cat.length - 1 ? 30 : 0),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 14,
                          offset: Offset(0, 3),
                          color: kBoxShadowColor.withOpacity(0.18))
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius:
                              BorderRadius.circular(kBorderRadiusList),
                          child: Image.asset(
                            'assets/images/${cat[index]}',
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // padding: EdgeInsets.symmetric(vertical:10,horizontal:5),
                            height: 24,

                            decoration: BoxDecoration(
                              color: kLightOrange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Buiscut',
                                style: kSourceSansProBold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 4,color: kOrange),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.favorite_outline,
                            size: 20,
                            color: Colors.red,
                          )
                        ],
                      ),
                      Text(
                        name[index],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3),
                      ),
                      Text(
                        date[index],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: kSourceSansProregular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3),
                      ),
                    ],
                  ),
                );
               
              },

           
            ),
          ),
          SizedBox(height: 10,),
          // ButtomNavigationbar()
        ],
      ),
    );
              ButtomNavigationbar();

  }
}

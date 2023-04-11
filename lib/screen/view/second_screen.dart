import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({Key? key}) : super(key: key);

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {

    Homeprovider homeprovider = Provider.of(context,listen: false);

    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Icon(Icons.search,color: Colors.black,),
                  SizedBox(width: 10,),
                  Text("Search",style: TextStyle(color: Colors.black)),
                  Spacer(),
                  Icon(Icons.close_outlined,color: Colors.black),
                  SizedBox(width: 5,),
                ],
              ),
            ),

            ListView.builder(itemBuilder: (context, index) => productBox(homeprovider!.imgPath[index+2]),shrinkWrap: true,itemCount: 5,),

          ],
        ),
      ),
    );
  }

  Widget productBox(String path)
  {
    return Container(
      margin: EdgeInsets.all(5),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("${path}",fit: BoxFit.cover),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey.shade300,width: 1),)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Lamborghini Urus"),
                        SizedBox(height: 3,),
                        Text("\3.15 cr",),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add_circle_outline,color: Colors.lightBlue,),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
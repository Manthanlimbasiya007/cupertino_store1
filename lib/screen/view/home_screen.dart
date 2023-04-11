import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

Homeprovider? homeprovider;
Homeprovider? homeproviderTrue;

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    homeprovider = Provider.of(context, listen: false);
    homeproviderTrue = Provider.of(context, listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lamborghini Urus",style: TextStyle(fontSize: 30),
              ),
            ),
            Expanded(
                child: Container(
                    child: ListView.builder(
                        itemBuilder: (context, index) =>
                            productBox(homeprovider!.imgPath[index]),
                        itemCount: homeprovider!.imgPath.length,
                        shrinkWrap: true))),
          ],
        ),
      ),
    );
  }

  Widget productBox(String path) {
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
            child: Image.asset("${path}", fit: BoxFit.cover),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.grey.shade300, width: 1),
              )),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lamborghini Urus"),
                        SizedBox(
                          height: 3,
                        ),
                        Text("\3.15 cr"),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add_circle_outline,
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: camel_case_types
class AboutList extends StatelessWidget {
  const AboutList({Key? key}) : super(key: key);

  Container getcont(String text) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity * 7,
      height: 200,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthScr = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Name", style: TextStyle(color: Colors.white)),
                    Container(
                      height: 2,
                      width: widthScr * 0.6,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: widthScr * 0.6,
                      child: Row(children: const [
                        Text(
                          "Co-Founder",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Icon(
                          Icons.linked_camera_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.info,
                          color: Colors.white,
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
              child: Container(
                width: 80,
                height: 80,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/images/try.png",
                    height: double.infinity,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ],
        ),
        //container for text about first founder
        getcont(
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam",
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
              child: Container(
                width: 80,
                height: 80,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/images/try.png",
                    height: double.infinity,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: widthScr * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text("Name", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(
                      height: 2,
                      width: widthScr * 0.6,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: widthScr * 0.6,
                      child: Row(children: const [
                        Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.linked_camera_outlined,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          "Co-Founder",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        //container for text about first founder
        getcont(
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam",
        )
      ],
    );
  }
}

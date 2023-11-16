import 'package:flutter/material.dart';
import 'package:kostku_app/Register_Page/Controller/Register_Controller.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Remove the controller initialization here
  // final RegisterController registerController = Get.find<RegisterController>();
  // final ProfileController profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    // Instantiate controllers within the build method
    final RegisterController registerController = Get.find<RegisterController>();

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAA1BMVEUkV9jlzEKTAAAAR0lEQVR4nO3BAQEAAACCIP+vbkhAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAO8GxYgAAb0jQ/cAAAAASUVORK5CYII=',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, -120 / 2.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295399_640.png',
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 12),
                  Text(
                    registerController.nameController.text.toString(),
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),


                  SizedBox(height: 5),
                  Text(
                    registerController.phoneController.text.toString(),

                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,

                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ElevatedButton(
                            onPressed: () {

                              Get.offNamed('/LoginPage');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.logout),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Logout')
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 40,
                        // Atur tinggi Container sesuai kebutuhan Anda
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                              // Implement your button action here
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.home),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Kos saat ini')
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 40,
                        // Atur tinggi Container sesuai kebutuhan Anda
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                            Get.toNamed('/RegisterPage');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.edit),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Edit Profile')
                              ],
                            )),
                      )
                    ],
                  ),

                  SizedBox(height: 15),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dog_age_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

class DogInfoScreen extends StatefulWidget {
  const DogInfoScreen({super.key});

  @override
  State<DogInfoScreen> createState() => _DogInfoScreenState();
}

class _DogInfoScreenState extends State<DogInfoScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tell us about your dog'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100.0),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Enter your dog's name",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100.0),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Enter your dog's age",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: ageController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 105.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: TextButton(
                      onPressed: () {
                        const snackBar = SnackBar(
                          content: Text('Fill all fields'),
                        );
                        if (nameController.text == "" ||
                            ageController.text == "") {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                dogName: nameController.text,
                                // multiply the user dog's age by 7
                                dogAge: (int.parse(ageController.text) * 7)
                                    .toString(),
                              ),
                            ),
                          );
                        }
                      },
                      child: Row(
                        children: const [
                          Text(
                            'Result',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

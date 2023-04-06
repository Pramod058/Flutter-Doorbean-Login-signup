import 'package:flutter/material.dart';
import '../../widgets/custom_elevatedButton.dart';
import '../../widgets/custom_textformfield.dart';

import '../../widgets/document_uploadcontainer.dart';
import '../../widgets/image_picker.dart';

class SignupPage2 extends StatefulWidget {
  const SignupPage2({Key? key}) : super(key: key);

  @override
  State<SignupPage2> createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  // Text Editing Controllers.
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController companyNamecontroller = TextEditingController();
  TextEditingController comanyVATcontroller = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 65.0, left: 30.0, right: 30.0, bottom: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/Logo.png"),
              const SizedBox(
                height: 50.0,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Material(
                      child: Imageuploadcontainer(),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomTextFormField(
                      controller: nameController,
                      hinttext: 'Rajesh Maharjan',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Phone Number *",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.phone,
                      controller: emailController,
                      hinttext: 'Enter your Phone number ',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nationality",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CountrydropdownButton(countryController: countryController),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "About *",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    TextField(
                      maxLines: 2,
                      controller: aboutController,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 12, 14, 12),
                        hintText: "Describe about yourself",
                        hintStyle: const TextStyle(
                            fontSize: 12.0, color: Colors.black45),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFEFEAEA)),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black45),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Company *",
                        style: TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.phone,
                      controller: companyNamecontroller,
                      hinttext: 'Enter Company Name ',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.number,
                      controller: comanyVATcontroller,
                      hinttext: 'Enter company VAT number ',
                      errortext: 'Invalid Input',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    //Document Upload Container

                    const Documentuploadcontainer(),


                    Row(
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: Colors.black,
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                        const Text(
                          "I accept all the terrms and conditions",
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    CustomElevatedButton(
                      text: "Save",
                      color: const Color(0xFF131515),
                      textcolor: Colors.white,
                      onpressed: () {},
                      width: screenSize.width,
                      height: 42.0,
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

// This is the file, where all the fields that are used while making the pages are kept. Mostly Textformfields, dropdowns, 
// Radio buttons, and so on.



import 'package:flutter/material.dart';
import 'package:country_pickers/countries.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

//  Custom Textformfield for emails, first name, last name, full name etcs. 

class CustomTextFormField extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final String hinttext;
  final String errortext;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final int? maxLine;

  CustomTextFormField({
    Key? key,
    required this.hinttext,
    required this.errortext,
    required this.controller,
    this.maxLine = 1,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: Form(
        key: formKey,
        child: TextFormField(
          maxLines: maxLine,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20, 12, 14, 12),
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 12.0, color: Colors.black45),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFEFEAEA)),
              borderRadius: BorderRadius.circular(2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black45),
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return errortext;
            }
            return null;
          },
        ),
      ),
    );
  }
}


//  Custom Textformfield for Passwords. 

class CustomPasswordField extends StatefulWidget {
  final String hinttext;
  final String errortext;
  final TextEditingController controller;

  const CustomPasswordField({
    Key? key,
    required this.hinttext,
    required this.errortext,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  final formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: Form(
        key: formKey,
        child: TextFormField(
          controller: widget.controller,
          obscureText: _obscureText,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 12, 14, 12),
            hintText: widget.hinttext,
            hintStyle: const TextStyle(fontSize: 12.0, color: Colors.black45),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFEFEAEA)),
              borderRadius: BorderRadius.circular(2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black45),
              borderRadius: BorderRadius.circular(2.0),
            ),
          ),
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return widget.errortext;
            }
            return null;
          },
        ),
      ),
    );
  }
}








// Custom radio buttons for Male, female and others 

class CustomGenderRadioTextField extends StatefulWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;

  const CustomGenderRadioTextField({
    Key? key,
    this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  _CustomGenderRadioTextFieldState createState() =>
      _CustomGenderRadioTextFieldState();
}

class _CustomGenderRadioTextFieldState
    extends State<CustomGenderRadioTextField> {
  String? _radioValue;

  final male = 'Male';
  final female = 'Female';
  final other = 'Other';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 12, 14, 12),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFEFEAEA)),
            borderRadius: BorderRadius.circular(2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black45),
            borderRadius: BorderRadius.circular(2.0),
          ),
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                male,
                style: const TextStyle(fontSize: 14.0, color: Colors.black45),
              ),
              Radio<String>(
                activeColor: Colors.black45,
                value: male,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value;
                  });
                },
              ),
              Text(
                female,
                style: const TextStyle(fontSize: 14.0, color: Colors.black45),
              ),
              Radio<String>(
                activeColor: Colors.black45,
                value: female,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value;
                  });
                },
              ),
              Text(
                other,
                style: const TextStyle(fontSize: 12.0, color: Colors.black45),
              ),
              Radio<String>(
                activeColor: Colors.black45,
                value: other,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value;
                  });
                },
              ),
            ],
          ),
        ),
        validator: widget.validator,
      ),
    );
  }
}










// Custom Countrydropdown button with country picker.
// Import required: 
      // import 'package:country_pickers/countries.dart';
      // import 'package:country_pickers/country.dart';
      // import 'package:country_pickers/utils/utils.dart';

class CountrydropdownButton extends StatefulWidget {
  final TextEditingController countryController;
  const CountrydropdownButton({
    Key? key,
    required this.countryController,
  }) : super(key: key);
  @override
  State<CountrydropdownButton> createState() => _CountrydropdownButtonState();
}

class _CountrydropdownButtonState extends State<CountrydropdownButton> {
  Country selectedCountry = CountryPickerUtils.getCountryByIsoCode('NP');
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.0,
      child: TextFormField(
        controller: widget.countryController,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFEFEAEA)),
            borderRadius: BorderRadius.circular(2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black45),
            borderRadius: BorderRadius.circular(2.0),
          ),
          suffixIcon: DropdownButtonHideUnderline(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DropdownButton<Country>(
                isExpanded: false,
                value: selectedCountry,
                onChanged: (newValue) {
                  setState(() {
                    selectedCountry = newValue!;
                    widget.countryController.text = newValue.name;
                  });
                },
                items: countryList
                    .map<DropdownMenuItem<Country>>((Country country) {
                  return DropdownMenuItem<Country>(
                    value: country,
                    child: Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 20.0,
                        ),
                        CountryPickerUtils.getDefaultFlagImage(country),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          country.name,
                          style: const TextStyle(
                            color: Colors.black45,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}













// Date Selector,  used for Selecting date of birth using Dropdowns.

// ignore_for_file: library_private_types_in_public_api

class DateSelector extends StatefulWidget {
  const DateSelector({super.key});

  @override
  _DateSelectorState createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
 String? _selectedMonth;
  String? _selectedDay;
  String? _selectedYear;

  final List<String> _monthsList =  [    'January',    'February',    'March',    'April',    'May',    'June',    'July',    'August',    'September',    'October',    'November',    'December',  ];

  final List<String> _daysList = List.generate(31, (index) => (index + 1).toString());

  final List<String> _yearsList = List.generate(100, (index) => (2023 - index).toString());

  @override
  Widget build(BuildContext context) {
    return 

   Container(
             height: 42.0,
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: const Color(0xFFEFEAEA)),
            borderRadius: BorderRadius.circular(1.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Month Dropdown
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  hint: const Text("Month",  style: TextStyle(fontSize: 12.0, color: Colors.black45),),
                  value: _selectedMonth,
                  onChanged: (value) {
                    setState(() {
                      _selectedMonth = value!;
                    });
                  },
                  items: _monthsList
                      .map((month) => DropdownMenuItem(
                            value: month,
                            child: Text(month),
                          ))
                      .toList(),
                ),
              ),
            

           const VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 5,
            endIndent: 5,
            color: Colors.black45,
          ),
            
              // Day Dropdown
              DropdownButtonHideUnderline(
                child: DropdownButton(
                         hint: const Text("Day",  style: TextStyle(fontSize: 12.0, color: Colors.black45),),
                  value: _selectedDay,
                  onChanged: (value) {
                    setState(() {
                      _selectedDay = value!;
                    });
                  },
                  items: _daysList
                      .map((day) => DropdownMenuItem(
                            value: day,
                            child: Text(day),
                          ))
                      .toList(),
                ),
              ),
            
       
           const VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 5,
            endIndent: 5,
            color: Colors.black45,
          ),
            
              // Year Dropdown
              DropdownButtonHideUnderline(
                child: DropdownButton(
                         hint: const Text("Year", style: TextStyle(fontSize: 12.0, color: Colors.black45),),
                  value: _selectedYear,
                  onChanged: (value) {
                    setState(() {
                      _selectedYear = value!;
                    });
                  },
                  items: _yearsList
                      .map((year) => DropdownMenuItem(
                            value: year,
                            child: Text(year),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        );
  }
}

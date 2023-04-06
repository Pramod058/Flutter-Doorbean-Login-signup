// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';

// class DateSelector extends StatefulWidget {
//   const DateSelector({super.key});

//   @override
//   _DateSelectorState createState() => _DateSelectorState();
// }

// class _DateSelectorState extends State<DateSelector> {
//   String _selectedMonth = 'January';
//   String _selectedDay = '1';
//   String _selectedYear = '2023';

//   final List<String> _monthsList =  [    'January',    'February',    'March',    'April',    'May',    'June',    'July',    'August',    'September',    'October',    'November',    'December',  ];

//   final List<String> _daysList = List.generate(31, (index) => (index + 1).toString());

//   final List<String> _yearsList = List.generate(100, (index) => (2023 - index).toString());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//              height: 50.0,
//           decoration: BoxDecoration(
//             border: Border.all(width: 2, color: Colors.grey),
//             borderRadius: BorderRadius.circular(4.0),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               // Month Dropdown
//               DropdownButton(
//                 value: _selectedMonth,
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedMonth = value!;
//                   });
//                 },
//                 items: _monthsList
//                     .map((month) => DropdownMenuItem(
//                           value: month,
//                           child: Text(month),
//                         ))
//                     .toList(),
//               ),
            

//            const VerticalDivider(
//             width: 20,
//             thickness: 1,
//             indent: 5,
//             endIndent: 5,
//             color: Colors.black45,
//           ),
            
//               // Day Dropdown
//               DropdownButton(
//                 value: _selectedDay,
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedDay = value!;
//                   });
//                 },
//                 items: _daysList
//                     .map((day) => DropdownMenuItem(
//                           value: day,
//                           child: Text(day),
//                         ))
//                     .toList(),
//               ),
            
       
//            const VerticalDivider(
//             width: 20,
//             thickness: 1,
//             indent: 5,
//             endIndent: 5,
//             color: Colors.black45,
//           ),
            
//               // Year Dropdown
//               DropdownButton(
//                 value: _selectedYear,
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedYear = value!;
//                   });
//                 },
//                 items: _yearsList
//                     .map((year) => DropdownMenuItem(
//                           value: year,
//                           child: Text(year),
//                         ))
//                     .toList(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

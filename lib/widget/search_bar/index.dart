// import 'dart:ffi';
//
// import 'package:flutter/material.dart';
//
// class SearchBar1 extends StatefulWidget {
//   final bool? showLocation;
//   final Function? goBackCallback;
//   final String? inputValue;
//   final String? defaultInputValue;
//   final Function? onCancel;
//   final bool? showMap;
//   final Function? onSearch;
//   final ValueChanged<String>? onSearchSubmit;
//
//   const SearchBar1(
//       {Key? key,
//       this.showLocation,
//       this.goBackCallback,
//       this.inputValue,
//       this.defaultInputValue,
//       this.onCancel,
//       this.showMap,
//       this.onSearch,
//       this.onSearchSubmit})
//       : super(key: key);
//
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }
//
// class _SearchBarState extends State<SearchBar> {
//   String _searchWord = ' ';
//   late TextEditingController _controller;
//
//   Function? _onClean() {
//     _controller.clear();
//     setState(() {
//       _searchWord = ' ';
//     });
//   }
//
//   @override
//   void initState() {
//     _controller = TextEditingController(text: widget.inputValue);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         children: [
//           if (widget.showLocation != null)
//             GestureDetector(
//               onTap: () {},
//               child: Row(
//                 children: const [
//                   Icon(Icons.room, color: Colors.blue, size: 20),
//                   Text('北京',
//                       style: TextStyle(color: Colors.black, fontSize: 18)),
//                 ],
//               ),
//             ),
//           if (widget.goBackCallback != null)
//             GestureDetector(
//               // onTap: widget.goBackCallback,
//               child: const Icon(
//                 Icons.chevron_left,
//                 color: Colors.black87,
//               ),
//             ),
//           Expanded(
//             child: Container(
//               height: 30,
//               decoration: BoxDecoration(
//                   color: Colors.grey.shade100,
//                   borderRadius: BorderRadius.circular(18)),
//               padding: const EdgeInsets.only(left: 8),
//               child: TextField(
//                 textInputAction: TextInputAction.search,
//                 // controller: _controller,
//                 style: const TextStyle(fontSize: 14),
//                 textAlign: TextAlign.start,
//                 decoration: InputDecoration(
//                   contentPadding: const EdgeInsets.only(top: -4),
//                   hintText: '请输入搜索词',
//                   hintStyle: const TextStyle(
//                     color: Colors.grey,
//                     fontSize: 14,
//                   ),
//                   border: InputBorder.none,
//                   prefixIcon: const Icon(
//                     Icons.search,
//                     size: 24,
//                     color: Colors.grey,
//                   ),
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       _onClean();
//                     },
//                     child: const Icon(
//                       Icons.clear,
//                       size: 24,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 4),
//           if (widget.onCancel != null)
//             GestureDetector(
//               // onTap: widget.goBackCallback,
//               child: const Text(
//                 '取消',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

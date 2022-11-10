import 'package:flutter/material.dart';

class SearchWidgetDropDown extends StatefulWidget {
  const SearchWidgetDropDown({
    super.key,
  });

  @override
  State<SearchWidgetDropDown> createState() => _SearchWidgetDropDownState();
}

class _SearchWidgetDropDownState extends State<SearchWidgetDropDown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        /// TODO:
        // items: const [],
        // items: weatherMap.map((json) {
        //   return DropdownMenuItem(
        //     value: json,
        //     child: Text(
        //       '${json.city}',
        //       style: const TextStyle(
        //         color: LightColors.colorsTextGrey,
        //       ),
        //     ),
        //   );
        // }).toList(),
        // onChanged: ((value) => {}),
        style: Theme.of(context)
            .textTheme
            .overline!
            .copyWith(fontSize: 15, color: Colors.black),
        // hint: const Text(
        //   'Search City',
        // ),
        // icon: const Icon(
        //   Icons.search,
        //   color: LightColors.colorsTextGrey,
        // ),
        // menuMaxHeight: 300,
        // focusColor: LightColors.colorsTextGrey,
        // borderRadius: BorderRadius.circular(18),
        // alignment: AlignmentDirectional.center,
        // dropdownColor: Colors.blue,
        // elevation: 1,
        // itemHeight: 60,
        // isExpanded: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: const Icon(Icons.search),
          hintText: 'Search City',
          contentPadding: const EdgeInsets.all(14),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Theme.of(context).indicatorColor,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Theme.of(context).indicatorColor,
              width: 1.5,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Theme.of(context).errorColor,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Theme.of(context).errorColor,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}

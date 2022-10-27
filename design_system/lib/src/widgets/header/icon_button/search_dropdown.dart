import 'package:flutter/material.dart';

import '../../../../design_system.dart';

class SearchDropDown extends StatefulWidget {
  const SearchDropDown({super.key});

  @override
  State<SearchDropDown> createState() => _SearchDropDownState();
}

class _SearchDropDownState extends State<SearchDropDown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: DropdownButtonFormField(
        items: const [],
        // items: jsonMap.map((json) {
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

        onChanged: ((value) => {}),
        style: Theme.of(context).textTheme.overline!.copyWith(
              fontSize: 15,
            ),
        hint: const Text(
          'Search City',
        ),
        icon: const Icon(
          Icons.search,
          color: LightColors.colorsTextGrey,
        ),
        menuMaxHeight: 300,
        focusColor: LightColors.colorsTextGrey,
        borderRadius: BorderRadius.circular(18),
        alignment: AlignmentDirectional.center,
        dropdownColor: Colors.blue,
        elevation: 1,
        itemHeight: 60,
        isExpanded: true,
        decoration: InputDecoration(
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

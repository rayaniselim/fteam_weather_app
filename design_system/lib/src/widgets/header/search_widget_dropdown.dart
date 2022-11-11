import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class SearchWidgetDropDown extends StatelessWidget {
  const SearchWidgetDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = Modular.get<WeatherBloc>();
    final textController = Modular.get<TextEditingController>();
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        controller: textController,
        onSubmitted: (valorDigitado) {
          bloc.add(
            SearchWeatherEvent(
              city: valorDigitado,
            ),
          );
          Modular.to.pop();
        },
        style: Theme.of(context)
            .textTheme
            .overline!
            .copyWith(fontSize: 15, color: Colors.black),
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          border: InputBorder.none,
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

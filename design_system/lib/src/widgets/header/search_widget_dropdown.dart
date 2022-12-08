import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class SearchWidgetDropDown extends StatelessWidget {
  const SearchWidgetDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // TODO Design system não conhece nada alem de widget e tema
    final bloc = Modular.get<WeatherBloc>();

    // TODO recebe pelo construtor TextEditingController
    final textController = Modular.get<TextEditingController>();

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        controller: textController,
        // TODO recebe um metodo de submit pelo construtor
        onSubmitted: (valorDigitado) {
          bloc.add(SearchWeatherEvent(city: valorDigitado));
          Modular.to.pop();
        },
        style: theme
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
              color: theme.indicatorColor,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: theme.indicatorColor,
              width: 1.5,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: theme.errorColor,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: theme.errorColor,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}

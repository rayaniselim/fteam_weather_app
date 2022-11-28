library core_module;

export 'package:bloc/bloc.dart';
export 'package:dio/dio.dart';
export 'package:flutter_modular/flutter_modular.dart';
export 'package:flutter_triple/flutter_triple.dart';
export 'package:google_fonts/google_fonts.dart';
// export 'package:mocktail/mocktail.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

export '/feature/data/models/weather_model.dart';
export '/feature/data/models/forecast_model.dart';
export 'feature/infra/dio_client_adapter.dart';
export 'feature/infra/custom_response.dart';

export 'feature/data/http/i_http_client.dart';

export 'package:core_module/feature/presenter/weather_bloc.dart';
export 'package:core_module/feature/presenter/weather_event.dart';
export 'package:core_module/feature/presenter/weather_state.dart';

import 'package:portfolio/api_service.dart';
import 'package:riverbloc/riverbloc.dart';

import 'about_state.dart';


class AboutCubit extends Cubit<AboutState> {
  AboutCubit() : super(const AboutState());

  final _apiService = ApiService();

  Future<void> _onFetchContent() async {
    // final cache = _apiService.cache;
    // final aboutCache = cache.aboutContent;
    // emit(state.copyWith(aboutContent: aboutCache));

    final response = await _apiService.getData();
    final about = response.aboutContent;
    emit(state.copyWith(aboutContent: about));
  }
}

final aboutProvider = BlocProvider<AboutCubit, AboutState>(
  (ref) => AboutCubit().._onFetchContent(),
);

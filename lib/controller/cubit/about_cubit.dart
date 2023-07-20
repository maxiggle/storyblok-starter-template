
import 'package:riverbloc/riverbloc.dart';

import 'about_state.dart';


class AboutCubit extends Cubit<AboutState> {
  AboutCubit() : super(const AboutState());

  // call this method -> ApiService()

  Future<void> _onFetchContent() async {
    //code here
  }
}

final aboutProvider = BlocProvider<AboutCubit, AboutState>(
  (ref) => AboutCubit().._onFetchContent(),
);

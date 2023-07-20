import 'package:equatable/equatable.dart';
import 'package:portfolio/api_service.dart';
import 'package:riverbloc/riverbloc.dart';


part 'experience_state.dart';

class ExperienceCubit extends Cubit<ExperienceState> {
  ExperienceCubit() : super(ExperienceState());

  final apiService = ApiService();

  Future<void> _onFetchContent() async {
   // code here
  }
}

final experienceProvider = BlocProvider<ExperienceCubit, ExperienceState>(
  (ref) => ExperienceCubit().._onFetchContent(),
);

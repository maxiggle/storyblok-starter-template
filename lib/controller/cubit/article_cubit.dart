import 'package:equatable/equatable.dart';
import 'package:portfolio/api_service.dart';
import 'package:riverbloc/riverbloc.dart';

part 'article_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(ProjectsState());

  final apiService = ApiService();

  Future<void> _onFetchContent() async {
    //code here
  }
}

final article1Provider = BlocProvider<ProjectsCubit, ProjectsState>(
  (ref) => ProjectsCubit().._onFetchContent(),
);

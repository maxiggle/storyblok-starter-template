import 'package:equatable/equatable.dart';
import 'package:portfolio/api_service.dart';
import 'package:riverbloc/riverbloc.dart';

part 'article_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(ProjectsState());

  final apiService = ApiService();

  Future<void> _onFetchContent() async {
    // final cache = apiService.cache;
    // final article1Cache = cache.article1;
    // emit(state.copyWith(article1: article1Cache));

    final response = await apiService.getData();
    final articles = response.article1;
    emit(state.copyWith(article1: articles));
  }
}

final article1Provider = BlocProvider<ProjectsCubit, ProjectsState>(
  (ref) => ProjectsCubit().._onFetchContent(),
);

// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'experience_cubit.dart';

class ExperienceState extends Equatable {
  final  experienceContent;
  const ExperienceState({this.experienceContent});

  @override
  List<Object?> get props => [experienceContent];

  ExperienceState copyWith({
    experienceContent,
  }) {
    return ExperienceState(
      experienceContent: experienceContent ?? this.experienceContent,
    );
  }
}

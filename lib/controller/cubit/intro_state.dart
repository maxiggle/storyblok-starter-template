// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'intro_cubit.dart';

class IntroState extends Equatable {
  final  introContent;
  const IntroState({this.introContent});
  
  @override
  List<Object?> get props => [introContent];

  IntroState copyWith({
  introContent,
  }) {
    return IntroState(
      introContent: introContent ?? this.introContent,
    );
  }
}

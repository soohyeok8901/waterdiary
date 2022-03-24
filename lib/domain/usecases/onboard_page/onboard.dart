import '../../repositories/user_repository.dart';

class Onboard {
  final UserRepository userRepository;

  Onboard({
    required this.userRepository,
  });

  ///view -> viewmodel -> usecase
  Future<void> execute({
    required int weigth,
  }) async {
    final double recommendedDailyWaterIntake = weigth * 0.03;

    await userRepository.save(recommendedDailyWaterIntake);
  }
}

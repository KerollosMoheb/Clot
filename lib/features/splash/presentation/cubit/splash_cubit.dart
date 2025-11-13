import 'package:bloc/bloc.dart';
import 'package:clot_ecommerce/features/splash/presentation/cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appStarted() async {
    await Future.delayed(Duration(seconds: 2));
    emit(UnAuthenticated());
  }
}

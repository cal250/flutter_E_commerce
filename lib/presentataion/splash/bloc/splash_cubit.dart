



import 'package:app/presentataion/splash/bloc/splash_state.dart';

class SplashCubit {}

class SplashCubit extends Cubit<SplashState>{

  SplashCubit():super(DisplaySplash());

  void appStarted() {
    emit(
      UnAuthenticated()
    )
  }
}
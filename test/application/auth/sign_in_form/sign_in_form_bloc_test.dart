import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_login_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:simple_login_ddd/domain/auth/auth_failure.dart';
import 'package:simple_login_ddd/domain/auth/i_auth_facade.dart';
import 'package:simple_login_ddd/domain/core/value_object.dart';
import 'package:simple_login_ddd/domain/core/weather_response.dart';
import 'package:simple_login_ddd/domain/weather/i_weather_facade.dart';
import 'package:simple_login_ddd/domain/weather/weather_failure.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

class MockBuildContext extends Mock implements BuildContext {}

class MockWeatherFacade extends Mock implements IWeatherFacade {}

void main() {
  late MockAuthFacade _mockAuthFacade;
  late MockWeatherFacade _mockWeatherFacade;
  late SignInFromBloc _signInFormBloc;
  late MockBuildContext _mockBuildContext;

  // DO: set up
  setUp(() {
    _mockAuthFacade = MockAuthFacade();
    _mockBuildContext = MockBuildContext();
    _mockWeatherFacade = MockWeatherFacade();
    _signInFormBloc = SignInFromBloc(_mockAuthFacade, _mockWeatherFacade);
  });
  // DO: tear down
  tearDown(() {
    _signInFormBloc.close();
  });

  //DO: test initial
  blocTest(
    'test initial',
    build: () => _signInFormBloc,
    expect: () => [],
  );

  //DO: test usernameChanged event InvalidUsername
  blocTest('test usernameChanged event InvalidUsername',
      build: () => _signInFormBloc,
      act: (SignInFromBloc bloc) => bloc.add(
            const SignInFormEvent.usernameChanged('test1'),
          ),
      expect: () => [
            SignInFormState(
                username: Username('test1'),
                password: Password(''),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption: none())
          ]);

  //DO: test usernameChanged event ValidUsername
  blocTest(
    'test usernameChanged event ValidUsername',
    build: () => _signInFormBloc,
    act: (SignInFromBloc bloc) => bloc.add(
      const SignInFormEvent.usernameChanged('user1'),
    ),
    expect: () => [
      SignInFormState(
          username: Username('user1'),
          password: Password(''),
          showErrorMessages: false,
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
          weatherFailureOrResponseOption: none())
    ],
  );
  //DO: test passwordChanged event InvalidPassword
  blocTest(
    'test usernameChanged event InvalidPassword',
    build: () => _signInFormBloc,
    act: (SignInFromBloc bloc) => bloc.add(
      const SignInFormEvent.passwordChanged('12345678'),
    ),
    expect: () => [
      SignInFormState(
          username: Username(''),
          password: Password('12345678'),
          showErrorMessages: false,
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
          weatherFailureOrResponseOption: none())
    ],
  );
  //DO: test passwordChanged event ValidPassword
  blocTest(
    'test usernameChanged event ValidPassword',
    build: () => _signInFormBloc,
    act: (SignInFromBloc bloc) => bloc.add(
      const SignInFormEvent.passwordChanged('@bcdE123'),
    ),
    expect: () => [
      SignInFormState(
          username: Username(''),
          password: Password('@bcdE123'),
          showErrorMessages: false,
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
          weatherFailureOrResponseOption: none())
    ],
  );
  //DO: test SignInWithUsernameAndPasswordPressed event ValidUsername and Password
  blocTest(
    'test SignInWithUsernameAndPasswordPressed event ValidUsername and Password',
    build: () {
      when(() => _mockAuthFacade.signWithUsernameAndPassword(
          username: Username('user1'),
          password: Password('@bcdE123'))).thenAnswer((_) async => right(unit));
      return _signInFormBloc;
    },
    act: (SignInFromBloc bloc) {
      bloc.add(
        const SignInFormEvent.passwordChanged('@bcdE123'),
      );
      bloc.add(
        const SignInFormEvent.usernameChanged('user1'),
      );
      bloc.add(
        const SignInFormEvent.signInWithUsernameAndPasswordPressed(),
      );
    },
    expect: () => [
      SignInFormState(
          username: Username(''),
          password: Password('@bcdE123'),
          showErrorMessages: false,
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
          weatherFailureOrResponseOption: none()),
      SignInFormState(
          username: Username('user1'),
          password: Password('@bcdE123'),
          showErrorMessages: false,
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
          weatherFailureOrResponseOption: none()),
      SignInFormState(
          username: Username('user1'),
          password: Password('@bcdE123'),
          showErrorMessages: false,
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
          weatherFailureOrResponseOption: none()),
      SignInFormState(
          username: Username('user1'),
          password: Password('@bcdE123'),
          showErrorMessages: true,
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(right(unit)),
          weatherFailureOrResponseOption: none())
    ],
  );

  //DO: test SignInWithUsernameAndPasswordPressed event Invalid Username and Password combination
  blocTest(
    'test SignInWithUsernameAndPasswordPressed event Invalid Username and Password combination',
    build: () {
      when(() => _mockAuthFacade.signWithUsernameAndPassword(
              username: Username('test1'), password: Password('@bcdE123')))
          .thenAnswer((_) async =>
              left(const AuthFailure.invalidUsernameAndPasswordCombination()));
      return _signInFormBloc;
    },
    act: (SignInFromBloc bloc) {
      bloc.add(
        const SignInFormEvent.passwordChanged('@bcdE123'),
      );
      bloc.add(
        const SignInFormEvent.usernameChanged('test1'),
      );
      bloc.add(
        const SignInFormEvent.signInWithUsernameAndPasswordPressed(),
      );
    },
    expect: () => [
      SignInFormState(
          username: Username(''),
          password: Password('@bcdE123'),
          showErrorMessages: false,
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
          weatherFailureOrResponseOption: none()),
      SignInFormState(
          username: Username('test1'),
          password: Password('@bcdE123'),
          showErrorMessages: false,
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
          weatherFailureOrResponseOption: none()),
      SignInFormState(
          username: Username('test1'),
          password: Password('@bcdE123'),
          showErrorMessages: true,
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(
              left(const AuthFailure.invalidUsernameAndPasswordCombination())),
          weatherFailureOrResponseOption: none()),
    ],
  );
  //DO: test moveToWeatherPage event NoConnection
  blocTest('test moveToWeatherPage event NoConnection',
      build: () {
        when(() => _mockWeatherFacade.getWeatherInfo(city: 'jakarta'))
            .thenAnswer((_) async => left(const WeatherFailure.noConnection()));
        return _signInFormBloc;
      },
      act: (SignInFromBloc bloc) {
        bloc.add(
          const SignInFormEvent.passwordChanged('@bcdE123'),
        );
        bloc.add(
          const SignInFormEvent.usernameChanged('user1'),
        );
        bloc.add(SignInFormEvent.moveToWeatherPage(_mockBuildContext));
      },
      expect: () => [
            SignInFormState(
                username: Username(''),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption: none()),
            SignInFormState(
                username: Username('user1'),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption: none()),
            SignInFormState(
                username: Username('user1'),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption:
                    optionOf(left(const WeatherFailure.noConnection()))),
          ]);
  //DO: test moveToWeatherPage event InternalServerError
  blocTest('test moveToWeatherPage event InternalServerError',
      build: () {
        when(() => _mockWeatherFacade.getWeatherInfo(city: 'jakarta'))
            .thenAnswer(
                (_) async => left(const WeatherFailure.internalServerError()));
        return _signInFormBloc;
      },
      act: (SignInFromBloc bloc) {
        bloc.add(
          const SignInFormEvent.passwordChanged('@bcdE123'),
        );
        bloc.add(
          const SignInFormEvent.usernameChanged('user1'),
        );
        bloc.add(SignInFormEvent.moveToWeatherPage(_mockBuildContext));
      },
      expect: () => [
            SignInFormState(
                username: Username(''),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption: none()),
            SignInFormState(
                username: Username('user1'),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption: none()),
            SignInFormState(
                username: Username('user1'),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption:
                    optionOf(left(const WeatherFailure.internalServerError())))
          ]);
  //DO: test moveToWeatherPage event UserRequestError
  blocTest('test moveToWeatherPage event UserRequestError',
      build: () {
        when(() => _mockWeatherFacade.getWeatherInfo(city: 'jakarta'))
            .thenAnswer(
                (_) async => left(const WeatherFailure.userRequestError()));
        return _signInFormBloc;
      },
      act: (SignInFromBloc bloc) {
        bloc.add(
          const SignInFormEvent.passwordChanged('@bcdE123'),
        );
        bloc.add(
          const SignInFormEvent.usernameChanged('user1'),
        );
        bloc.add(SignInFormEvent.moveToWeatherPage(_mockBuildContext));
      },
      expect: () => [
            SignInFormState(
                username: Username(''),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption: none()),
            SignInFormState(
                username: Username('user1'),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption: none()),
            SignInFormState(
                username: Username('user1'),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption:
                    optionOf(left(const WeatherFailure.userRequestError())))
          ]);
  //DO: test moveToWeatherPage event JsonParsingError
  blocTest('test moveToWeatherPage event JsonParsingError',
      build: () {
        when(() => _mockWeatherFacade.getWeatherInfo(city: 'jakarta'))
            .thenAnswer(
                (_) async => left(const WeatherFailure.jsonParsingError()));
        return _signInFormBloc;
      },
      act: (SignInFromBloc bloc) {
        bloc.add(
          const SignInFormEvent.passwordChanged('@bcdE123'),
        );
        bloc.add(
          const SignInFormEvent.usernameChanged('user1'),
        );
        bloc.add(SignInFormEvent.moveToWeatherPage(_mockBuildContext));
      },
      expect: () => [
            SignInFormState(
                username: Username(''),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption: none()),
            SignInFormState(
                username: Username('user1'),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption: none()),
            SignInFormState(
                username: Username('user1'),
                password: Password('@bcdE123'),
                showErrorMessages: false,
                isSubmitting: false,
                authFailureOrSuccessOption: none(),
                weatherFailureOrResponseOption:
                    optionOf(left(const WeatherFailure.jsonParsingError())))
          ]);
  //DO: test moveToWeatherPage event has WeatherResponse
  blocTest('test moveToWeatherPage has WeatherResponse',
      build: () {
        when(() => _mockWeatherFacade.getWeatherInfo(city: 'jakarta'))
            .thenAnswer((_) async => right(WeatherResponse(
                  wind: Wind(),
                  cod: 0,
                  coord: Coord(),
                  clouds: Clouds(),
                  timezone: 0,
                  main: Main(),
                  base: '',
                  name: 'Jakarta',
                  visibility: 0,
                  id: 0,
                  dt: 0,
                  weather: [],
                  sys: Sys(),
                )));
        return _signInFormBloc;
      },
      act: (SignInFromBloc bloc) {
        bloc.add(SignInFormEvent.moveToWeatherPage(_mockBuildContext));
      },
      expect: () => [
        SignInFormState(
          username: Username(''),
          password: Password(''),
          showErrorMessages: false,
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
          weatherFailureOrResponseOption: optionOf(right(WeatherResponse(
            wind: Wind(),
            cod: 0,
            coord: Coord(),
            clouds: Clouds(),
            timezone: 0,
            main: Main(),
            base: '',
            name: 'Jakarta',
            visibility: 0,
            id: 0,
            dt: 0,
            weather: [],
            sys: Sys(),
          ))))]);
}

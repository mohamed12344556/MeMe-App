import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  // Core
  // Dio dio = DioFactory.getDio();
  // sl.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Auth
  _initAuth();

  // Home
  _initHome();
}

void _initAuth() {
  // Repositories
  // sl.registerLazySingleton<AuthRepository>(() => AuthRepository(sl()));

  // // Auth Cubit
  // sl.registerLazySingleton<AuthCubit>(
  //   () => AuthCubit(sl<ApiService>(), sl<AuthRepository>()),
  // );
}

void _initHome() {
  // Home Cubit
  // sl.registerLazySingleton<HomeCubit>(
  //   () => HomeCubit(sl<ApiService>(), sl<AuthRepository>()),
  // );
}

///! 1. `registerSingleton`
/// - Creates the object immediately during registration (Eager Initialization).
/// - Only one instance is created and shared across the entire application.
/// - Use Case: When you need the object to be available as soon as the app starts.
/// - Example: AppConfig, SessionManager.

///! 2. `registerLazySingleton`
/// - Creates the object only when it is first requested (Lazy Initialization).
/// - Only one instance is created and shared across the entire application.
/// - Use Case: To optimize performance by delaying object creation until needed.
/// - Example: DatabaseService, ApiClient.

///! 3. `registerFactory`
/// - Creates a new object instance every time it is requested.
/// - Use Case: When you need a new instance for every operation or request.
/// - Example: FormValidator, HttpRequest.

/// Comparison Table:
/// | Property            | `registerSingleton`  | `registerLazySingleton` | `registerFactory`       |
/// |---------------------|-----------------------|-------------------------|-------------------------|
/// | Creation Time       | Immediately          | On first request        | On every request        |
/// | Number of Instances | One                  | One                     | New instance every time |
/// | State Sharing       | Supported            | Supported               | Not supported           |
/// | Common Use Cases    | Settings, Sessions   | Heavy Services          | Temporary Objects       |

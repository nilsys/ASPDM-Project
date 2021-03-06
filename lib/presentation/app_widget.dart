import 'package:aspdm_project/application/states/auth_state.dart';
import 'package:aspdm_project/core/maybe.dart';
import 'package:aspdm_project/domain/entities/user.dart';
import 'package:aspdm_project/domain/repositories/auth_repository.dart';
import 'package:aspdm_project/locator.dart';
import 'package:aspdm_project/presentation/pages/archive_page.dart';
import 'package:aspdm_project/presentation/pages/login_page.dart';
import 'package:aspdm_project/presentation/pages/main_page.dart';
import 'package:aspdm_project/presentation/pages/task_form_page.dart';
import 'package:aspdm_project/presentation/pages/task_info_page.dart';
import 'package:aspdm_project/presentation/routes.dart';
import 'package:aspdm_project/presentation/theme.dart';
import 'package:aspdm_project/presentation/widgets/stream_listener.dart';
import 'package:aspdm_project/services/connectivity_service.dart';
import 'package:aspdm_project/services/log_service.dart';
import 'package:aspdm_project/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthState>(
          create: (context) => AuthState(locator<AuthRepository>()),
        ),
      ],
      child: MaterialApp(
        title: "ASPDM Project App",
        theme: lightTheme,
        darkTheme: darkTheme,
        navigatorKey: locator<NavigationService>().navigationKey,
        routes: {
          Routes.taskForm: (_) => TaskFormPage(),
          Routes.login: (_) => LoginPage(),
          Routes.archive: (_) => ArchivePage(),
          Routes.task: (_) => TaskInfoPage(),
        },
        home: RootWidget(),
      ),
    );
  }
}

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamListener<bool>(
      listener: (_, status) {
        if (status.hasData && !status.data)
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("The device is offline!"),
            ),
          );
      },
      stream: locator<ConnectivityService>().onConnectionStateChange,
      child: Selector<AuthState, Maybe<User>>(
        selector: (_, state) => state.currentUser,
        builder: (_, value, __) {
          locator<LogService>().logBuild("Root $value");
          if (value.isJust())
            return MainPage();
          else
            return LoginPage();
        },
      ),
    );
  }
}

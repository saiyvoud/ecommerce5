import 'package:ecommerce5/pages/auth/dashboard.dart';
import 'package:get/get.dart';

import '../pages/auth/register_page.dart';

routes() => [
      GetPage(name: "/register", page: () => const RegisterPage()),
      GetPage(name: "/login", page: () => const RegisterPage()),
      GetPage(name: "/dashboard", page: () => const DashBoard()),
    ];

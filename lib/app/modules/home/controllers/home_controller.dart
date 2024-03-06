import 'package:get/get.dart';
import 'package:hospital/app/data/models/home/category_model.dart';

class HomeController extends GetxController {
  List<CategoryModel> categoryList = [
    CategoryModel(icon: 'assets/icons/home/doctor.svg', text: 'Doctors'),
    CategoryModel(icon: 'assets/icons/home/services.svg', text: 'Services'),
    CategoryModel(icon: 'assets/icons/home/packages.svg', text: 'Packages'),
    CategoryModel(icon: 'assets/icons/home/department.svg', text: 'Department'),
    CategoryModel(icon: 'assets/icons/home/ambulance.svg', text: 'Ambulance'),
    CategoryModel(icon: 'assets/icons/home/medicine.svg', text: 'Medicine',isActive: false)
  ];
}

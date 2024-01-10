

import 'dart:collection';

import 'package:untitled/model/customer.dart';
import 'package:untitled/service/customer_service.dart';
import 'package:untitled/service/impl/customer_service_ipml.dart';

Future<void> main(List<String> arguments) async {
  // int? a;
  // print(a);
  // List<int> list = List.filled(2, 0);
  // list[0]=999;
  // List<int> list1 = [];
  // list1.add(102);
  // for(int i in list1){
  //   print(i);
  // }
  // Map<String,dynamic> map = HashMap();
  // map.putIfAbsent("key1", () => "gt1");
  // map["key1"]= 33;
  // print("map : $map");\
  // call api
  CustomerService customerService = CustomerServiceImpl();
  List<Customer> customers = await customerService.getAllCustomer();
  print("customer: $customers");

}

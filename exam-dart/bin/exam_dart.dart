

import 'package:exam_dart/model/customer.dart';
import 'package:exam_dart/service/customer_service.dart';
import 'package:exam_dart/service/impl/customer_service_Impl.dart';

void main(List<String> arguments) async {
  CustomerService customerService = CustomerServiceImpl();
  Customer newCustomer = Customer(
    fullName: "John Doe",
    address: "123 Main St",
    birthday: DateTime(1997, 1, 1),
    phoneNumber: "0123456789",
  );

  Customer createdCustomer = await customerService.addCustomer(newCustomer);
  print("crated a customer: $createdCustomer");
  List<Customer> customers = await customerService.getAllCustomer();
  print("customer: $customers");

}

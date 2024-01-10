import 'dart:convert';
import 'dart:html';

import 'package:untitled/model/customer.dart';
import 'package:untitled/service/customer_service.dart';
import 'package:http/http.dart' as http;

class CustomerServiceImpl implements CustomerService{
  final String baseUrl = "http://localhost:8080/api/v1/customer/";
  @override
  Future<Customer> findCustomerById(int id) {
    // TODO: implement findCustomerById
    throw UnimplementedError();
  }

  @override
  Future<List<Customer>> getAllCustomer() async{
   try{
     final response = await http.get(Uri.parse("$baseUrl/getAll"));
     if(response.statusCode == 200){
       var data = jsonDecode(response.body) as List;
       return data.map((item) => Customer.valueFromJson(item)).toList();
     }
   }catch(e){
     print(e);
   }
   return <Customer>[];
  }
  
}
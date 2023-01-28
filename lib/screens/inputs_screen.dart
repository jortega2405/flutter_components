import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Jose',
      'last_name': 'Ortega',
      'email': 'jose@email.com',
      'password': '098765',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and forms'),
      ),
      body:  SingleChildScrollView(
         child: Padding(padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
         child: Form(
          key: myFormKey,
           child: Column(
            children: [
               AppInputField(
                labelText: 'Name',
                hintText: 'User Name',
                formProperty: 'first_name',
                formValues: formValues,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
               AppInputField(
                labelText: 'Last Name',
                hintText: 'Last Name',
                formProperty: 'last_name',
                formValues: formValues,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
               AppInputField(
                labelText: 'email',
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress, formProperty: 'email',
                formValues: formValues,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
               AppInputField(
                labelText: 'Password',
                hintText: 'Password',
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(
                  value: 'Admin', child: Text('Admin'),
                  ),
                  DropdownMenuItem(
                  value: 'Super', child: Text('Super'),
                  ),
                  DropdownMenuItem(
                  value: 'Developer', child: Text('Developer'),
                  ),
                ],
                onChanged: (value) { 
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },
                 
               ),

              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                 if ( !myFormKey.currentState!.validate()) {
                  print('not valid form');
                   return;
                 } 
                  //TODO: print form values
                  print(formValues);
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text('Save')
                  ),
                ),
              ),
            ],
           ),
         ),
         )
      ),
    );
  }
}


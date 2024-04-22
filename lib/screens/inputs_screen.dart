import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, dynamic> fromValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text("Inputs y Forms"),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  formProperty: 'first_name',
                  formValues: fromValues,
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  suffixIcon: Icons.person_2_rounded,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  formProperty: 'last_name',
                  formValues: fromValues,
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  suffixIcon: Icons.person_2_rounded,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  formProperty: 'email',
                  formValues: fromValues,
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  suffixIcon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  formProperty: 'password',
                  formValues: fromValues,
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  suffixIcon: Icons.password,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Superuser', child: Text('Superuser')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Jr. Developer', child: Text('Jr. Developer'))
                    ],
                    onChanged: (value) {
                      print(value);
                      fromValues['role'] = value ?? 'Admin';
                    }),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario invalido');
                        return;
                      }
                      print(fromValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text("Guardar"),
                      ),
                    ))
              ],
            ),
          ),
        )));
  }
}

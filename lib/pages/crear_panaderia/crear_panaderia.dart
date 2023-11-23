import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:panalavista_definitivo/pages/crear_panaderia/select_image.dart';

class CrearPanaderia extends StatefulWidget {
  const CrearPanaderia({Key? key}) : super(key: key);

  @override
  _CrearPanaderiaState createState() => _CrearPanaderiaState();
}

class _CrearPanaderiaState extends State<CrearPanaderia> {
  File? imagenTuUpload;

  String nombrePanaderia = "";
  String correo = "";
  String telefono = "";
  String ubicacion = "";
  String descripcion = "";
  String horarioAtencion = "";
  DateTime? fechaInicio;
  DateTime? fechaFin;
  List<String> productosOfrecidos = [];
  TextEditingController productoController = TextEditingController();
  TextEditingController descripcionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Creemos juntos"),
        backgroundColor: Color.fromARGB(255, 136, 59, 0),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildImageWidget(),
              SizedBox(height: 20),
              _buildTextField("Nombre de la panadería", nombrePanaderia,
                  (value) => nombrePanaderia = value),
              _buildTextField("Correo", correo, (value) => correo = value),
              _buildTextField(
                  "Teléfono", telefono, (value) => telefono = value),
              _buildTextField("Ubicación de la panadería", ubicacion,
                  (value) => ubicacion = value),
              SizedBox(height: 20),
              _buildProductList(),
              _buildAddProductTextField(),
              SizedBox(height: 20),
              _buildDateSelector(
                title: 'Seleccionar fecha de inicio',
                fechaSeleccionada: fechaInicio,
                onDateSelected: (selectedDate) {
                  setState(() {
                    fechaInicio = selectedDate;
                  });
                },
              ),
              SizedBox(height: 20),
              _buildDateSelector(
                title: 'Seleccionar fecha de fin',
                fechaSeleccionada: fechaFin,
                onDateSelected: (selectedDate) {
                  setState(() {
                    fechaFin = selectedDate;
                  });
                },
              ),
              SizedBox(height: 20),
              _buildTextField("Horario de atención", horarioAtencion,
                  (value) => horarioAtencion = value),
              SizedBox(height: 20),
              _buildDescriptionTextField(),
              SizedBox(height: 20),
              _buildSaveButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageWidget() {
    return imagenTuUpload != null
        ? Image.file(imagenTuUpload!)
        : ElevatedButton(
            onPressed: () async {
              final XFile? imagen = await getImage();
              setState(() {
                imagenTuUpload = File(imagen!.path);
              });
            },
            child: const Text("Subir imagen"),
          );
  }

  Widget _buildTextField(
      String label, String value, Function(String) onChanged) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(labelText: label),
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildProductList() {
    return Column(
      children: productosOfrecidos.map((producto) {
        return Text(producto);
      }).toList(),
    );
  }

  Widget _buildAddProductTextField() {
    return TextFormField(
      controller: productoController,
      decoration: InputDecoration(
        labelText: 'Agregar producto',
        suffixIcon: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              String producto = productoController.text;
              if (producto.isNotEmpty) {
                productosOfrecidos.add(producto);
                productoController.clear();
              }
            });
          },
        ),
      ),
    );
  }

  Widget _buildDateSelector({
    required String title,
    DateTime? fechaSeleccionada,
    required Function(DateTime) onDateSelected,
  }) {
    return ListTile(
      title: Text(title),
      subtitle: fechaSeleccionada != null
          ? Text(
              '${fechaSeleccionada.day}/${fechaSeleccionada.month}/${fechaSeleccionada.year}')
          : Text('Seleccione la fecha'),
      onTap: () async {
        DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(DateTime.now().year + 5),
        );

        if (selectedDate != null) {
          onDateSelected(selectedDate);
        }
      },
    );
  }

  Widget _buildDescriptionTextField() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: descripcionController,
        maxLines: 5,
        decoration: InputDecoration(labelText: 'Descripción breve'),
        onChanged: (value) {
          setState(() {
            descripcion = value;
          });
        },
      ),
    );
  }

  Widget _buildSaveButton() {
    return ElevatedButton(
      onPressed: () {
        // Aquí puedes guardar los datos ingresados
      },
      child: Text("Guardar"),
    );
  }
}

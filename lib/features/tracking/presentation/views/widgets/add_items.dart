import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/tracking/presentation/manager/cubits/weight/weight_cubit.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/add_weight_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddItems extends StatefulWidget {
  const AddItems({super.key, required this.text});
  final String text;

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  late final TextEditingController textEditingController;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: const Color(0xffFFA05C)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.text, style: Styles.semiBoldTextStyle16),
              const SizedBox(width: 25),
              Expanded(
                flex: 2,
                child: AddWeightFormField(
                  textEditingController: textEditingController,
                ),
              ),
              BlocListener<WeightCubit, WeightState>(
                listener: (context, state) {
                  if (state is AddWeightSuccess) {
                    customSnakBar(context, 'Add Weight Successflul');
                    BlocProvider.of<WeightCubit>(context).getWeight();
                  } else if (state is AddWeightFailure) {
                    customSnakBar(context, state.failureMessage);
                  }
                },
                child: IconButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      autovalidateMode = AutovalidateMode.disabled;

                      FocusScope.of(context).unfocus();
                      BlocProvider.of<WeightCubit>(
                        context,
                      ).addWeight(textEditingController.text);

                      textEditingController.clear();

                      setState(() {});
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 28,
                    color: Color(0xffFFA05C),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void customSnakBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text), backgroundColor: Colors.deepOrangeAccent),
    );
  }
}

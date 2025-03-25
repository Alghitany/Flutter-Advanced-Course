import 'package:flutter/material.dart';
import 'package:week7/features/home/data/models/specializations_response_model.dart';

import 'doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorList;
  const DoctorsListView({super.key, this.doctorList});

  @override
  Widget build(BuildContext context) {
    print("Doctors List: $doctorList"); // Debugging
    return Expanded(
        child: ListView.builder(
            itemCount: doctorList?.length,
            itemBuilder: (context, index){
              return DoctorsListViewItem(
                doctorsModel: doctorList?[index],
              );
            }
        )
    );
  }
}

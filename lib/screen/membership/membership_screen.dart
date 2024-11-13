import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:macedon/screen/membership/widget/membership_widget.dart';
import 'package:macedon/view_model/membership/macedon_membership_iewmodel.dart';

import '../../view_model/city/allcity_viewmodel.dart';

class MemebershipScreen extends ConsumerWidget {
  const MemebershipScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final membershipState = ref.watch(membershipProvider);
    final membershipNotifier = ref.read(membershipProvider.notifier);

    // Trigger the fetch of membership data
    membershipNotifier.macedonMembership();
    return Scaffold(
      appBar: AppBar(
        title: Text("Mebership"),
      ),
      body: membershipState.messages == null
          ? Center(child: CircularProgressIndicator())
          : ListView.separated(
              padding: EdgeInsets.all(15),
              shrinkWrap: true,
              itemCount: 5,
              // ProviderContainer()
              //     .read(membershipProvider)
              //     .messages!
              //     .data!
              //     .membership_dtl!
              //     .length,
              itemBuilder: (context, index) {
                return membershipwidget(
                    member:
                        membershipState.messages!.data!.membership_dtl![index]);
              },
              separatorBuilder: (context, int) {
                return SizedBox(
                  height: 10,
                );
              },
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_model/profile/profile_viewmodel.dart';

class EditProfileScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final refProfile = ref.watch(profileProvider);
    final profile = ref.watch(profileProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.teal,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              // var profile = ProviderContainer().read(profileProvider.notifier);
              // print(profile.name);
              Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Image
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 20),
                // Name Field
                TextFormField(
                  // initialValue: 'Enter Your name',
                  controller: profile.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(height: 10),
                // Email Field
                TextFormField(
                  // controller: profile.email,
                  // initialValue: 'Enter Your Email',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 10),
                // Phone Number Field
                TextFormField(
                  // controller: profile.number,
                  // initialValue: 'Enter Yur Phone Number',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                ),
                SizedBox(height: 10),
                // Gender Field

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select your gender:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                title: Text('Male'),
                                leading: Radio<dynamic>(
                                  value: 'Male',
                                  groupValue:
                                      refProfile.messages?.status?.gender,
                                  onChanged: (value) {
                                    profile.updateGender(value!);
                                    // setState(() {
                                    //   _selectedGender = value;
                                    // });
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text('Female'),
                                leading: Radio<dynamic>(
                                  value: 'Female',
                                  groupValue:
                                      refProfile.messages?.status?.gender,
                                  onChanged: (value) {
                                    profile.updateGender(value!);
                                    // setState(() {
                                    //   _selectedGender = value;
                                    // });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        profile.selectedGender == null
                            ? 'No gender selected'
                            : 'Selected: ${profile.selectedGender}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Update Address Button
                ElevatedButton(
                  onPressed: () {
                    profile.updateProfile();
                  },
                  child: Text('Update Address'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50), // Full-width button
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

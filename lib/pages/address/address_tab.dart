import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/address/address_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddressTab extends StatelessWidget {
  const AddressTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Address",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 16,
          color: Colors.white,
        ),
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AddressWidget(
              isSelected: true,
            ),
            AddressWidget(),
            AddressWidget(),
            AddressWidget(),
            AddressWidget(),
            AddressWidget(),
            AddressWidget(),
            AddressWidget(),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

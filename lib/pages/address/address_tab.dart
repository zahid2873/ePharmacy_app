import 'package:e_pharmacy/common/custom_appbar.dart';
import 'package:e_pharmacy/pages/address/address_widget.dart';
import 'package:e_pharmacy/pages/address/controller/address_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddressTab extends ConsumerWidget {
  const AddressTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressState = ref.watch(addressProvider);
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
        onPressed: () => GoRouter.of(context).pushNamed("addNewAddress"),
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 16,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            addressState.when(
              data: (address) {
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: address.length,
                  itemBuilder: (context, index) {
                    return AddressWidget(
                      address: address[index],
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ],
        ),
      ),
    );
  }
}

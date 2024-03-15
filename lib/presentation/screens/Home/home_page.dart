import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/api_status.dart';
import '../../utils/constants.dart';
import 'bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(OnInitialLoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: AppBar(
        title: const Text(
          'Enquiry List',
          style: TextStyle(
              color: AppColors.kBlueColor,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors.kBlueColor,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.exit_to_app_sharp))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.homeEnquiryState == ApiStatus.loading) {
                  return const CircularProgressIndicator();
                } else if (state.homeEnquiryState == ApiStatus.success) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                        child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount:
                          state.homeEnquiryModel?.data[0].favourites.length ??
                              0,
                      itemBuilder: (context, index) {
                        return Text(
                          state.homeEnquiryModel?.data[0].favourites[index]
                                  .name ??
                              '',
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(
                        thickness: 1,
                        color: AppColors.kChineseRed,
                      ),
                    )),
                  );
                } else if (state.homeEnquiryState == ApiStatus.failure) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Center(
                        child: Text(
                      'Oops !\n Something went wrong \n Please try again',
                      style:
                          TextStyle(fontSize: 18, color: AppColors.kChineseRed),
                    )),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        )),
      ),
    );
  }
}

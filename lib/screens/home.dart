import 'package:flutter/material.dart';
import 'package:eatit/config/config.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(children: [
                    InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 12, right: 14, bottom: 12, left: 12),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors
                                .bgPrimary), // set the background color of the circle
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black,
                          size: 24,
                          weight: 2,
                        ), // set the icon and its color
                      ),
                    )
                  ]),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 36),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: AppColors.bgPrimary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: const [
                          Text(
                            'Siddharth Das',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '+91 98765 43210',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Edit Account Info',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ]),
                        const Image(image: AppImages.avatar)
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: AppColors.bgPrimary, width: 5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.bgSecondary,
                          ),
                          child: const Text(
                            'Your Activity',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors
                                        .bgSecondary), // set the background color of the circle
                                child: const Icon(
                                  Icons.mail_outline,
                                  color: Colors.black,
                                  size: 14,
                                  weight: 2,
                                ), // set the icon and its color
                              ),
                              const SizedBox(width: 24),
                              const Text('Venue',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors
                                        .bgSecondary), // set the background color of the circle
                                child: const Icon(
                                  Icons.mail_outline,
                                  color: Colors.black,
                                  size: 14,
                                  weight: 2,
                                ), // set the icon and its color
                              ),
                              const SizedBox(width: 24),
                              const Text('Number of estimate people',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors
                                        .bgSecondary), // set the background color of the circle
                                child: const Icon(
                                  Icons.mail_outline,
                                  color: Colors.black,
                                  size: 14,
                                  weight: 2,
                                ), // set the icon and its color
                              ),
                              const SizedBox(width: 24),
                              const Text('Number of buffer people',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: AppColors.bgPrimary, width: 5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors
                                            .bgSecondary), // set the background color of the circle
                                    child: const Icon(
                                      Icons.mail_outline,
                                      color: Colors.black,
                                      size: 14,
                                      weight: 2,
                                    ), // set the icon and its color
                                  ),
                                  const SizedBox(width: 24),
                                  const Text('Starter',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                ],
                              ),
                              const Icon(Icons.arrow_drop_down,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: AppColors.bgSoftDark,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors
                                              .bgSecondary), // set the background color of the circle
                                      child: const Icon(
                                        Icons.mail_outline,
                                        color: Colors.black,
                                        size: 14,
                                        weight: 2,
                                      ), // set the icon and its color
                                    ),
                                    const SizedBox(width: 24),
                                    const Text('Noodles',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors
                                              .bgSecondary), // set the background color of the circle
                                      child: const Icon(
                                        Icons.mail_outline,
                                        color: Colors.black,
                                        size: 14,
                                        weight: 2,
                                      ), // set the icon and its color
                                    ),
                                    const SizedBox(width: 24),
                                    const Text('Corn Chat',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors
                                              .bgSecondary), // set the background color of the circle
                                      child: const Icon(
                                        Icons.mail_outline,
                                        color: Colors.black,
                                        size: 14,
                                        weight: 2,
                                      ), // set the icon and its color
                                    ),
                                    const SizedBox(width: 24),
                                    const Text('Spring Roll',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors
                                            .bgSecondary), // set the background color of the circle
                                    child: const Icon(
                                      Icons.mail_outline,
                                      color: Colors.black,
                                      size: 14,
                                      weight: 2,
                                    ), // set the icon and its color
                                  ),
                                  const SizedBox(width: 24),
                                  const Text('Main Course',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                ],
                              ),
                              const Icon(Icons.arrow_drop_down,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors
                                            .bgSecondary), // set the background color of the circle
                                    child: const Icon(
                                      Icons.mail_outline,
                                      color: Colors.black,
                                      size: 14,
                                      weight: 2,
                                    ), // set the icon and its color
                                  ),
                                  const SizedBox(width: 24),
                                  const Text('Appitizer',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                ],
                              ),
                              const Icon(Icons.arrow_drop_down,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      backgroundColor: AppColors.bgSecondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

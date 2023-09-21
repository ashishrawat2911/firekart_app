/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:localization/localization.dart';
import 'package:core/state/result_state.dart';
import 'package:core/state_manager/base_view.dart';

import 'package:core/utils/date_time_util.dart';
import 'package:domain/models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:assets/res/app_theme.dart';

import 'package:assets/res/colors.gen.dart';
import '../../../widgets/common_app_loader.dart';
import '../../../widgets/result_state_builder.dart';
import '../view_model/my_orders_cubit.dart';

@RoutePage()
class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.value.myOrders),
      ),
      body: BaseView<MyOrdersCubit, ResultState<List<Order>>>(
        onViewModelReady: (viewModel) {
          viewModel.fetchOrders();
        },
        builder: (
          BuildContext context,
          viewModel,
          ResultState<List<Order>> state,
        ) {
          return ResultStateBuilder(
            state: state,
            loadingWidget: (bool isReloading) {
              return const Center(
                child: CommonAppLoader(),
              );
            },
            dataWidget: orderView,
            errorWidget: (String error) {
              return Container();
            },
          );
        },
      ),
    );
  }

  Widget orderView(List<Order> orderList) {
    return ListView.builder(
      controller: controller,
      itemCount: orderList.length,
      itemBuilder: (BuildContext context, int orderListIndex) {
        return Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Localization.value.orderedOnCaps,
                              style: context.textTheme.labelLarge,
                            ),
                            Text(
                              getOrderedTime(
                                orderList[orderListIndex].orderedAt,
                              ),
                              style: context.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //TODO Removed Order Items
                  // ...List<Widget>.generate(
                  //   orderList[orderListIndex].orderItems.length,
                  //   (index) => orderCard(
                  //     orderList[orderListIndex].orderItems[index],
                  //   ),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            Localization.value.totalCaps,
                            style: context.textTheme.labelLarge,
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Text(
                            //TODO '${orderList[orderListIndex].currency}'
                            ' ${orderList[orderListIndex].price}',
                            style: context.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            orderList[orderListIndex].orderStatus,
                            style: context.textTheme.bodySmall,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          getOrderStatusIcon(
                            orderList[orderListIndex].orderStatus,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            if (orderListIndex < orderList.length)
              const Divider()
            else
              Container(),
          ],
        );
      },
    );
  }

  Widget orderCard(OrderItem orderItem) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 20),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CachedNetworkImage(
                    imageUrl: orderItem.image,
                    height: 46,
                    width: 46,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderItem.name,
                        style: context.textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${orderItem.currency} ${orderItem.price} / ${orderItem.unit}',
                        style: context.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${orderItem.noOfItems} item${orderItem.noOfItems > 1 ? "s" : ""}",
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getOrderStatusIcon(String orderStatus) {
    if (orderStatus == 'Delivered') {
      return const Icon(
        Icons.check_circle,
        color: AppColors.color6EBA49,
      );
    } else {
      return const Icon(
        Icons.info,
        color: AppColors.colorFFE57F,
      );
    }
  }
}

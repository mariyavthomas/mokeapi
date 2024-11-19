import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockapi/application/apifetch/fetchdata_bloc.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  @override
  void initState() {
    super.initState();
    context.read<FetchdataBloc>().add(Fetchdata());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
      ),
      body: BlocBuilder<FetchdataBloc, FetchdataState>(
        builder: (context, state) {
          if (state is Fechdataloading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is Fechloadeddata) {
            final data = state.loadad;
            if (data.isEmpty) {
              return const Center(
                child: Text('No notifications found.'),
              );
            }

            return ListView.separated(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                final notification = data[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Leading image
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: SizedBox(
                              height: 50,
                              width: 60,
                              child: Image.asset(
                                'assets/image/notification.jpg',
                                fit: BoxFit.cover,
                              ))),
                      const SizedBox(width: 12),
                      // Title and description
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notification.title,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              notification.body,
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              calculateTimeAgo(notification.timestamp),
                              style: const TextStyle(
                                  fontSize: 12.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 1.0,
                  color: const Color.fromARGB(255, 227, 222, 222),
                ); // Adds a divider between items
              },
            );
          } else if (state is Fechdataerror) {
            return Center(
              child: Text('Error: ${state.error}'),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  String calculateTimeAgo(String timestamp) {
    final now = DateTime.now();
    final dateTime = DateTime.parse(timestamp);
    final difference = now.difference(dateTime);

    if (difference.inDays > 0) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
    } else {
      return 'just now';
    }
  }
}

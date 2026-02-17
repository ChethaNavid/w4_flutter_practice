import 'package:flutter/material.dart';
import 'package:w4_flutter_practice/2_download_app/ui/theme/theme.dart';

import 'download_controler.dart';

class DownloadTile extends StatelessWidget {
  const DownloadTile({super.key, required this.controller});

  final DownloadController controller;

  // TODO

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: ListTile(
            title: Text(controller.ressource.name, style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(controller.progressText, style: TextStyle(color: AppColors.textLight)),
            trailing: IconButton(
              onPressed: controller.status == DownloadStatus.notDownloaded
                  ? controller.startDownload
                  : null,
              icon: Icon(controller.icon),
            ),
          ),
        );
      },
    );
  }
}

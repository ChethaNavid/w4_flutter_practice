import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w4_flutter_practice/2_download_app/ui/theme/theme.dart';

import 'download_controler.dart';

class DownloadTile extends StatelessWidget {
  const DownloadTile({super.key});

  // TODO

  @override
  Widget build(BuildContext context) {
    DownloadController controller = context.watch<DownloadController>();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: ListTile(
        title: Text(
          controller.ressource.name,
          style: AppTextStyles.label,
        ),
        subtitle: Text(
          controller.progressText,
          style: TextStyle(color: AppColors.textLight),
        ),
        trailing: IconButton(
          onPressed: controller.status == DownloadStatus.notDownloaded
              ? controller.startDownload
              : null,
          icon: Icon(controller.icon),
        ),
      ),
    );
  }
}

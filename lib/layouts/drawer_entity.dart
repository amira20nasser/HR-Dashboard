enum Views { dashBoard, recruitment, settings, support, department, employee }

class DrawerEntity {
  final String assetSvgName;
  final String title;
  final Views view;
  const DrawerEntity({
    required this.assetSvgName,
    required this.title,
    required this.view,
  });
}

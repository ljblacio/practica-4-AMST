class FilterChipData {
  String label;
  bool isSelected;

  FilterChipData(this.label, this.isSelected);
}

List<FilterChipData> categories = [
  FilterChipData("Encebollado", false),
  FilterChipData("Bolon", false),
  FilterChipData("Bollo", false),
  FilterChipData("Tigrillo", false)
];
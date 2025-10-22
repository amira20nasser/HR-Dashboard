String formatRelativeTime(DateTime input) {
  final now = DateTime.now();
  final diff = now.difference(input);

  if (diff.inMinutes < 1) return 'just now';
  if (diff.inMinutes < 60) return '${diff.inMinutes} minutes ago';
  if (diff.inHours < 24) return '${diff.inHours} hours ago';

  final yesterday = now.subtract(Duration(days: 1));
  if (input.day == yesterday.day &&
      input.month == yesterday.month &&
      input.year == yesterday.year) {
    return 'Yesterday at ${input.hour.toString().padLeft(2, '0')}:${input.minute.toString().padLeft(2, '0')}';
  }

  return '${input.day}/${input.month}/${input.year} at ${input.hour}:${input.minute}';
}

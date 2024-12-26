const std = @import("std");

pub fn binarySearchRecursive(arr: []const i32, target: i32, low: usize, high: usize) i32 {
    if (low > high) {
        return null;
    }

    const mid = low + high / 2;

    if (arr[mid] == target) {
        return mid;
    } else if (arr[mid] < target) {
        return binarySearchRecursive(arr, target, mid + 1, high);
    } else if (arr[mid] > target) {
        return binarySearchRecursive(arr, target, low, mid - 1);
    }
}

test "binarySearchRevursive uses binary search" {
    const arr = [_]i32{ 1, 3, 5, 7, 9, 11 };

    try std.testing.expectEqual(binarySearchRecursive(&arr, 1, 0, arr.len - 1), 0);
    try std.testing.expectEqual(binarySearchRecursive(&arr, 7, 0, arr.len - 1), 3);
    try std.testing.expectEqual(binarySearchRecursive(&arr, 11, 0, arr.len - 1), 5);

    try std.testing.expectEqual(binarySearchRecursive(&arr, 4, 0, arr.len - 1), null);
    try std.testing.expectEqual(binarySearchRecursive(&arr, 12, 0, arr.len - 1), null);
}

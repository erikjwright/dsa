const std = @import("std");

pub fn findFirst(arr: []const i32) i32 {
    return arr[0];
}

test "findFirst uses different array sizes" {
    const sm = [_]i32{1};
    const med = [_]i32{ 15, 2, 3, 4, 5 };
    const lg = [_]i32{ 100, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

    try std.testing.expectEqual(findFirst(&sm), 1);
    try std.testing.expectEqual(findFirst(&med), 15);
    try std.testing.expectEqual(findFirst(&lg), 100);
}

const std = @import("std");

pub fn sumArray(arr: []const i32) i32 {
    var sum: i32 = 0;

    for (arr) |elem| {
        sum += elem;
    }

    return sum;
}

test "sumArray adds elements in an array" {
    const sm = [_]i32{1};
    const md = [_]i32{ 1, 2, 3, 4, 5 };
    const lg = [_]i32{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

    try std.testing.expectEqual(sumArray(&sm), 1);
    try std.testing.expectEqual(sumArray(&md), 15);
    try std.testing.expectEqual(sumArray(&lg), 55);
}

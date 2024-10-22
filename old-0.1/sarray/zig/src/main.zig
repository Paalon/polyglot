const std = @import("std");

pub fn main() !void {
    const writer = std.io.getStdOut().writer();
    const xs = [_][]const u8{ "a", "b", "c" };
    for (xs) |x| {
        try writer.print("{s}\n", .{x});
    }
}

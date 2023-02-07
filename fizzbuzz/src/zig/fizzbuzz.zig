const std = @import("std");
const stdout = std.io.getStdOut().writer();

pub fn main() !void {
    var n: i64 = 1;
    while (n <= 50) {
        if (@mod(n, 15) == 0) {
            try stdout.print("fizz buzz\n", .{});
        } else if (@mod(n, 3) == 0) {
            try stdout.print("fizz\n", .{});
        } else if (@mod(n, 5) == 0) {
            try stdout.print("buzz\n", .{});
        } else {
            try stdout.print("{}\n", .{n});
        }
        n += 1;
    }
}

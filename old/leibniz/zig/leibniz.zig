const std = @import("std");

pub fn main() !void {
    const arg: [*:0]const u8 = std.os.argv[1];
    const buf: []const u8 = std.mem.sliceTo(arg, 0);
    const n: i64 = try std.fmt.parseInt(i64, buf, 10);
    std.debug.print("{}\n", .{leibniz(n)});
}

pub fn leibniz(n: i64) f64 {
    var sum: f64 = 0;
    var k: i64 = 0;
    while (k <= n) : (k += 1) {
        sum += @intToFloat(f64, powersign(k)) / @intToFloat(f64, (2 * k + 1));
    }
    return 4 * sum;
}

pub fn powersign(n: i64) i64 {
    return if (@rem(n, 2) == 0) 1 else -1;
}

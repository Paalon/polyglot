const std = @import("std");
const unicode = std.unicode;

pub fn main() !void {
    var code_point_iterator = (try unicode.Utf8View.init("🍎 and 🍏")).iterator();
    while (code_point_iterator.nextCodepoint()) |code_point| {
        std.debug.print("{u}\n", .{code_point});
    }
}

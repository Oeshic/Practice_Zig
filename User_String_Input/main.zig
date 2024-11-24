// main.zig
// Prints out User inputted text

const std = @import("std");
// shortening print call
const print = std.debug.print;

pub fn main() !void {
    // Longer text than this shows an error
    const text_field_size = 50;

    print("Write something in {d} characters. See it printed.\n", .{text_field_size});
    var input: [text_field_size]u8 = undefined;

    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    _ = try stdin.readUntilDelimiter(&input, '\n');

    try stdout.print("{s}\n", .{input});
}

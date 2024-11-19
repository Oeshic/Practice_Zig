/// main.zig
/// Prints "Hello World!" to stdout

// Library import. save it as a const std
const std = @import("std");

// This works too!! (part 1/2)
//const thisOne = @import("std");

// main return value is void. so no return needed
pub fn main() void {
    // print taken from the debug section of the std library
    // {s} takes a string parameter
    std.debug.print("{s} {s}!\n", .{ "Hello", "World" });
    // This works too!! (part 2/2)
    //thisOne.debug.print("{s} {s}!\n", .{ "Hello", "World" });
}

// Do: "zig build-exe main.zig" to build executable

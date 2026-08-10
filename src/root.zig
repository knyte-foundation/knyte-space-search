//! By convention, root.zig is the root source file when making a package.
const std = @import("std");
const Io = std.Io;

/// Prints the classic greeting to the provided writer.
///
/// Accepting an `Io.Writer` instance is a handy way to write reusable code
/// that does not depend on where the output ends up (stdout, a file, etc.).
pub fn printHelloWorld(writer: *Io.Writer) Io.Writer.Error!void {
    try writer.print("Hello, world!\n", .{});
}

pub fn add(a: i32, b: i32) i32 {
    return a + b;
}

test "basic add functionality" {
    try std.testing.expect(add(3, 7) == 10);
}

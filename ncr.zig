const std = @import("std");
const math = @import("std").math;

pub fn main() !void {
    const args = try std.process.argsAlloc(std.heap.page_allocator);
    defer std.process.argsFree(std.heap.page_allocator, args);

    // Ensure we have at least two arguments
    if (args.len < 3) {
        std.log.err("Usage: {s} <int1> <int2>\n", .{args[0]});
        return;
    }

    // Try to parse the first two arguments as integers
    const n = try std.fmt.parseInt(u32, args[1], 10);
    const r = try std.fmt.parseInt(u32, args[2], 10);

    const ncr = factorial(n) / factorial(r) / factorial(n - r);

    // Print the two integers
    std.log.info("{} choose {} is equal to {}", .{ n, r, ncr });
}

// Some funky recursive programming never hurts. Right?
fn factorial(n: u32) u32 {
    if (n < 2) return 1 else return n * factorial(n - 1);
}

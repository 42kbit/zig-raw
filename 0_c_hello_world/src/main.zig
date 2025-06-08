// C calling convention would be used, for linux that is 'System V ABI'
extern fn printf(format: [*:0]const u8, ...) callconv(.C) c_int;

export fn main() c_int {
    _ = printf("Hello, world\n");
    return 0;
}

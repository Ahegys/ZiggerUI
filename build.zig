// modified by Ahegys
const std = @import("std");
const Target = @import("std").Target;

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exeX86 = b.addExecutable(.{
        .name = "Zigger_x86",
        .root_source_file = .{ .path = "src/main.zig" },
        .target = target,
        .optimize = optimize,
    });
    exeX86.linkSystemLibraryName("SDL2");
    exeX86.linkSystemLibraryName("SDL2_image");
    exeX86.linkSystemLibraryName("c");
    b.installArtifact(exeX86);
}

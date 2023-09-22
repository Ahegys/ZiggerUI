pub fn equals(str: ?[]const u8, comp: ?[]const u8) bool {
    const len = str.len - comp.len;

    if (len == 0) {
        for (0..str.len) |i| {
            if (str[i] != comp[i])
                return false;
        }
        return true;
    }
    return false;
}

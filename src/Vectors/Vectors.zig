pub const V = struct {
    x:i32,
    y:i32,
    z:i32,
};

pub fn createVector(x:i32, y:i32, z:i32) V {
    const vec: V = V {
        .x = x,
        .y = y,
        .z = z,
    };
   return vec;
}
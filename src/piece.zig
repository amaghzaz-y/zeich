pub const PieceType = enum { king, queen, rook, knight, bishop, pawn };
pub const PieceColor = enum { white, black };
pub const Piece = struct {
    color: PieceColor,
    type: PieceType,
    x: u8,
    y: u8,

    pub fn init(x: u8, y: u8) Piece {
        return Piece{ x, y };
    }

    pub fn setPosition(self: Piece, x: u8, y: u8) void {
        self.x = x;
        self.y = y;
    }

    pub fn isWhite(self: Piece) bool {
        return self.white;
    }

    pub fn isBlack(self: Piece) bool {
        return !self.white;
    }
};

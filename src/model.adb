package body Model is

    function Rows (M : TTTModel) return Positive
    is
    begin
        return M.nbRow;
    end Rows;

    function Cols (M : TTTModel) return Positive
    is
    begin
        return M.nbColumn;
    end Cols;

    function Create_Board (nbRow, nbColumn : Positive) return Board.Vector
    is

        board_Rep  : Board.Vector;
        board_Row  : BoardRow.Vector;
        Null_Index : Player_Index := 0;
    begin

        for I in 1 .. nbRow loop
            for J in 1 .. nbColumn loop
                board_Row.Append (Null_Index);

            end loop;

                board_Rep.Append (board_Row);
                Clear (board_Row);
        end loop;

        return board_Rep;

    end Create_Board;

end Model;
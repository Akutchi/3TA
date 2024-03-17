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

    function Row (M : TTTModel; Index : Positive) return BoardRow.Vector
    is
    begin
        return M.board_Rep.Element (Index);
    end Row;

    function Max_Turn (M : TTTModel) return Positive
    is
    begin
        return M.Total_Case;
    end Max_Turn;

    procedure Update (M : TTTModel; Player, Board_Case : String)
    is
        Player_Integer : Player_Index := Integer'Value (Player);
        BCase_Integer  : Positive := Integer'Value (Board_Case);

        X_Value : Positive := BCase_Integer / M.nbRow + 1;
        Y_Value : Positive := BCase_Integer mod M.nbColumn;

        Modified_Row   : BoardRow.Vector := M.board_Rep.Element (Y_Value);
        Modified_Board : Board.Vector := M.board_Rep;

        Token_Rep : Natural;

    begin

        case Player_Integer is

            when 1      => Token_Rep := 1;
            when 2      => Token_Rep := 2;
            when others => Token_Rep := 0;
        end case;

        Replace_Element (Modified_Row, X_Value, Token_Rep);
        Replace_Element (Modified_Board, Y_Value, Modified_Row);

    exception

        when others => null;

    end Update;

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
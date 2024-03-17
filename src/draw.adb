with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package body Draw is

    procedure drawRow (nbColumn : Integer)
    is

        Row_Str  : Unbounded_String;

    begin

        for I in 1 .. nbColumn-1 loop
            Append (Row_Str, "|---");
        end loop;
        Append (Row_Str, "|---|");

        Put_Line (To_String (Row_Str));

    end drawRow;


    procedure drawBoard (GModel : Any_TTTModel)
    is
        nbCol : Integer := GModel.Cols;
    begin

        for I in 1 .. GModel.Rows+1 loop
            drawRow (nbCol);
        end loop;

    end drawBoard;

end Draw;
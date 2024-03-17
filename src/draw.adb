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


    procedure drawTokens (Row : BoardRow.Vector)
    is

        Row_Str  : Unbounded_String;
        Token    : String (1 .. 1);

    begin

        for Token_Rep of Row loop

            case Token_Rep is

                when 1      => Token := "X";
                when 2      => Token := "O";
                when others => Token := " ";
            end case;

            Append (Row_Str, "| " & Token & " ");
        end loop;
        Append (Row_Str, "|");

        Put_Line (To_String (Row_Str));

    end drawTokens;

    procedure drawBoard (GModel : Any_TTTModel)
    is
        nbCol : Integer := GModel.Cols;
    begin

        for I in 1 .. GModel.Rows loop

            declare

                Row_I : BoardRow.Vector := GModel.Row (I);

            begin

                drawRow (nbCol);
                drawTokens (Row_I);
            end;

        end loop;
        drawRow (nbCol);

    end drawBoard;

end Draw;
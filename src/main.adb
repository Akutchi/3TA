With Ada.Text_IO; use Ada.Text_IO;

with Model; use Model;
with Draw;  use Draw;

procedure main
is
    Turn        : Natural := 0;
    Board_Case  : String (1 .. 1);


    Game_Model  : Any_TTTModel := new TTTModel (3, 3);
begin

    loop

    Turn := Turn + 1;
    drawBoard (Game_Model);

    declare
        Player_Name : String (1 .. 1) := (if Turn mod 2 = 0 then "2" else "1");
    begin
        Put_Line ("Player " & Player_Name & " : ");
        Board_Case := Get_Line;

        Game_Model.Update (Player_Name, Board_Case);
    end;
    exit when Turn = Game_Model.Max_Turn;

    end loop;
end main;

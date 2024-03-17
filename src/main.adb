With Ada.Text_IO; use Ada.Text_IO;

with Model; use Model;
with Draw;  use Draw;

procedure main
is

    Game_Model : Any_TTTModel := new TTTModel (3, 3);
begin

    drawBoard (Game_Model);

end main;

with Ada.Containers.Vectors;

package Model is

    type TTTModel (nbRow : Integer; nbColumn : Integer) is tagged private;
    type Any_TTTModel is access all TTTModel;

    subtype Player_Index is Natural range 0 .. 2;

    package BoardRow is new Ada.Containers.Vectors
      (Index_Type   => Positive,
       Element_Type => Player_Index);
    use BoardRow;

    package Board is new Ada.Containers.Vectors
      (Index_Type   => Positive,
       Element_Type => BoardRow.Vector,
       "=" => BoardRow."=");
    use Board;

    function Rows (M : TTTModel) return Positive;
    function Cols (M : TTTModel) return Positive;

    function Row (M : TTTModel; Index : Positive) return BoardRow.Vector;

    function Max_Turn (M : TTTModel) return Positive;

    procedure Update (M : TTTModel; Player, Board_Case : String);

private

    function Create_Board (nbRow, nbColumn : Positive) return Board.Vector;

    type TTTModel (nbRow : Integer; nbColumn : Integer) is tagged record

        board_Rep   : Board.Vector := Create_Board (nbRow, nbColumn);
        Total_Case  : Positive := nbRow * nbColumn;

    end record;

end Model;
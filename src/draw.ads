with Model; use Model;

package Draw is

    procedure drawBoard (GModel : Any_TTTModel);

private
    procedure drawRow (nbColumn : Integer);
    procedure drawTokens (Row : BoardRow.Vector);


end Draw;
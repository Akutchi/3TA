# 3TA

EDIT : As of now, it seems that implementing the GUI will be complicated on my computer as every GUI that I tried to use (Gnoga, Ada_GUI, GtkAda) has each a problem that makes them impossible to use. So, I will focus on a console game for now (which was either way the first step).

3TA (or TickTackToe in Ada) is the implementation of the classic game of TickTackToe using [Gnoga](https://github.com/alire-project/gnoga/tree/master) as the graphic lib. Just like CPyC, 3TA is mostly a project in order to further my skills in Ada; and this time, with graphic interfaces.

I don't think I need to explain TickTacToe, but just in case, and in order to be exhaustive :
- The game is set on a 3x3 grid (and maybe nxn later one) on which players take turn placing tokens.
- If a player manage to make a line (in whatever direction), they win; otherwise there is a draw.

I think I will develop the project in two separate parts. First, I will create a console version of the game and only then will I really implement the GUI.

pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Anon_Demo; use Anon_Demo;

procedure Tests is
   X : aliased Integer := 1;
   Title : aliased constant String := "main";
begin
   Set (X'Access, 42);
   Assert (Get (X'Access) = 42);
   Put_Line ("PASS anonymous access parameters");

   declare
      W : Window (Title'Access);
   begin
      Assert (Title_Of (W) = "main");
      Resize (W, 800, 600);
      Assert (W.Width = 800 and then W.Height = 600);
      Put_Line ("PASS anonymous access discriminant");
   end;

   Put_Line ("All Anonymous Access topic tests passed.");
end Tests;

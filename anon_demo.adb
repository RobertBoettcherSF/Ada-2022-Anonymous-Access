pragma Ada_2022;

package body Anon_Demo is

   procedure Set (Target : access Integer; Value : Integer) is
   begin
      Target.all := Value;
   end Set;

   function Get (Source : access constant Integer) return Integer is
   begin
      return Source.all;
   end Get;

   function Title_Of (W : Window) return String is
   begin
      return W.Title.all;
   end Title_Of;

   procedure Resize (W : in out Window; Width, Height : Natural) is
   begin
      W.Width := Width;
      W.Height := Height;
   end Resize;

end Anon_Demo;

--  Ada 2022 topic: anonymous access types (parameters / discriminants).
pragma Ada_2022;

package Anon_Demo is

   --  Anonymous access parameter: no named access type required.
   procedure Set (Target : access Integer; Value : Integer);
   function Get (Source : access constant Integer) return Integer;

   --  Anonymous access discriminant.
   type Window (Title : access constant String) is limited record
      Width, Height : Natural := 0;
   end record;

   function Title_Of (W : Window) return String;
   procedure Resize (W : in out Window; Width, Height : Natural);

end Anon_Demo;

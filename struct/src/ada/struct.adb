with Ada.Strings; use Ada.Strings;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Struct is
   type Animal is record
      Name : Unbounded_String;
      Weight : Float;
   end record;
   
   Some_Animal : Animal := (To_Unbounded_String ("Max"), 5.0);
begin
   Put_Line (To_String (Some_Animal.Name));
   Put_Line (Float'Image (Some_Animal.Weight));
end Struct;
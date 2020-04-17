uses graphABC, ABCButtons, ABCObjects;

const
   n = 15;
   d = 15;

var
   a: array[1..n, 1..n] of boolean;
   info: rectangleABC;

procedure kletka(x1, y1, d: integer; c: Color);
begin
   Brush.Color := c;
   Rectangle(x1, y1, x1 + d, y1 + d);
end;

begin
   
   SetWindowSize(d * n, d * n + 50);
   SetWindowCaption('Game "Life"');
   SetWindowIsFixedSize(true);
   CenterWindow;

   for var i := 1 to n - 2 do
      for var j := 1 to n - 2 do
         a[Random(n) + 1, Random(n) + 1] := true; 
   for var i := 1 to n do
      for var j := 1 to n do
         if a[i, j] = false then
            kletka(j * d - d, i * d - d, d, claquamarine)
         else 
            kletka(j * d - d, i * d - d, d, clBlack);
   
   while true do
   begin
      for var i := 1 to n do
         for var j := 1 to n do
         begin
            var shetchik := 0;
            if i = 1 then
            
            begin
               if j = 1 then
               
               begin
                  if a[i, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j] = true then
                     shetchik := shetchik + 1;
               end;
               
               if (j > 1) and (j < n) then
               
               begin
                  if a[i, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j] = true then
                     shetchik := shetchik + 1;
               end;
               
               if j = n then
               
               begin
                  if a[i, j - 1] =  true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j] = true then
                     shetchik := shetchik + 1;
               end;
               
            end;
            
            if (i > 1) and (i < n) then
            
            begin
               if j = 1 then
               
               begin
                  if a[i, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j + 1] = true then
                     shetchik := shetchik + 1;
               end;
               
               if (j > 1) and (j < n) then
               
               begin
                  if a[i, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j] = true then
                     shetchik := shetchik + 1;
                  
               end;
               
               if j = n then
               
               begin
                  if a[i, j - 1] =  true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i + 1, j] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j] = true then
                     shetchik := shetchik + 1;
                  
               end;
               
            end;
            
            if i = n then
            
            begin
               if j = 1 then
               
               begin
                  if a[i, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j] = true then
                     shetchik := shetchik + 1;
               end;
               
               if (j > 1) and (j < n) then
               
               begin
                  if a[i, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j + 1] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j] = true then
                     shetchik := shetchik + 1;
               end;
               
               if j = n then
               
               begin
                  if a[i, j - 1] =  true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j - 1] = true then
                     shetchik := shetchik + 1;
                  if a[i - 1, j] = true then
                     shetchik := shetchik + 1;
               end;
            end;
            
            if a[i, j] = true then
               if (shetchik < 2) or (shetchik > 3) then
                  a[i, j] := false;
            if a[i, j] = false then
               if shetchik = 3 then
                  a[i, j] := true;
            
         end;
      
      for var i := 1 to n do
         for var j := 1 to n do
            if a[i, j] = false then
               kletka(j * d - d, i * d - d, d, claquamarine)
            else 
               kletka(j * d - d, i * d - d, d, clBlack);
      Sleep(50);     
      info := new RectangleABC(0, n * d, n * d, 50, clAquamarine);      
   end;
end.
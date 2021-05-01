function Initialize()

end

function Update()
   
   sFileToRead = SELF:GetOption('FileToRead')
   
   hReadingFile = io.open(sFileToRead)
   if not hReadingFile then
      print('LuaTextFile: unable to open file at ' .. sFileToRead)
      return
   end
   
   sAllText = hReadingFile:read("*all")
   
   sAllText = string.gsub(sAllText, "\t", "     ")
   
   io.close(hReadingFile)
   
   return tostring(sAllText)   
   
end
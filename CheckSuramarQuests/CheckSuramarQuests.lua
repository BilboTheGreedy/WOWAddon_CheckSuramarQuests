
SLASH_SQ1 = '/sq';

function handler(msg, editbox)
 local command, arg1, arg2 = msg:match("^(%S*)%s*(%S*)(.-)$");
 	if arg1 == "1" then
	arg1 = quests1
	elseif arg1 == "2" then
	arg1 = quests2
	elseif arg1 == "3" then
	arg1 = quests3
	elseif arg1 == "4" then
	arg1 = quests4
	elseif arg1 == "5" then
	arg1 = quests5
	else
	end
 -- Any leading non-whitespace is captured into command;
 -- the rest (minus leading whitespace) is captured into rest.
 if command == "y" and arg1 ~= nil then
  print("completed")
	for q,i  in pairs(arg1)do
		if (IsQuestFlaggedCompleted(i)) then
			print(string.format("\124cff00ff00\124h[%s]\124h\124r", q))
		else
			print(string.format("\124cffff0000\124h[%s]\124h\124r", q))
		end
	  end
	 elseif command == "n" and arg1 ~= nil then
	 print("not completed")
	 	for q,i  in pairs(arg1)do
		if not (IsQuestFlaggedCompleted(i)) then
			print(string.format("\124cffff0000\124h[%s]\124h\124r", q))
		end
	  end
 else
print("/sq all 1-5, /sq not 1-5")
 end
end
SlashCmdList["SQ"] = handler;

RegisterCommand("kick", function(source, args, rawCommand)
       local target = args[1]

      local reason = ""

       for i in pairs(args) do 
      if i > 1 then
          print(args[i])
            reason = reason .. " " .. args[i]
        end
    end
    print(reason)
    TriggerServerEvent("Help:banPlayer", target, reason)
end, false)
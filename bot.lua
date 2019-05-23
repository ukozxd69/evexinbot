local discordia = require('discordia')
local client = discordia.Client()
local ukozid = "169248704455376896"
local sxid = "177940330681860096"

discordia.extensions() -- load all helpful extensions

local prefix = "."
local commands = {
	[prefix .. "purchase"] = {
		description = "Gives purchase information.",
		exec = function(message)
		message:reply{
			        embed = {
        fields = {
                        {name = "Evexin"; value = "**Evexin is currently $10 and is only purchasable with PayPal\nTo purchase Evexin DM** <@!"..ukozid.."> or <@!"..sxid..">"; inline = false};
        };
        color = discordia.Color.fromRGB(153, 192, 255).value;
    }
			
		}
		end
	},
	[prefix .. "kick"] = {
		description = "Kicks the @'d user. (ADMIN ONLY)",
		exec = function(message)
			if message.member.id == ukozid and sxid then
				p(message.mentionedUser)
			else
				p(message.author.username.." has tried to execute an admin command!")
			end
		end
	}
}

client:on('ready', function()
	p(string.format('Logged in as %s', client.user.username))
	client:setGame("Smoking crack!")
end)

client:on("messageCreate", function(message)
	local args = message.content:split(" ") -- split all arguments into a table
	local content = message.content
    local member = message.member
    local memberid = message.member.id
    local author = message.author
	local command = commands[args[1]]
	p("EVEXIN LOGS ||TIME: "..message.timestamp.." || AUTHOR: ".. author.username.." || MESSAGE: "..content)
	if command then
		command.exec(message) -- execute the command
	end

	if args[1] == prefix.."cmds" then -- display all the commands
		local output = {}
		for word, tbl in pairs(commands) do
			table.insert(output, "Command: " .. word .. "\nDescription: " .. tbl.description)
		end
        message:reply{
        embed = {
        fields = {
                        {name = "Commands"; value = table.concat(output, "\n\n"); inline = false};
        };
        color = discordia.Color.fromRGB(153, 192, 255).value;
    }
}
end

	if args[1] == prefix.."setgame" then -- set game
		client:setGame(args[2])
		end

-- ANTI LINK
	if content:lower():find(".com") then
	if memberid ~= ukozid and sxid then
    p("EVEXIN LOGS ||TIME: "..message.timestamp.." "..author.username.. " has tried to send a link!")
     message:reply{
        embed = {
        fields = {
                        {name = "Evexin"; value = "<@!"..memberid.."> You're not allowed to send links boyo :angry:"; inline = false};
        };
        color = discordia.Color.fromRGB(255, 0, 0).value;
        message:delete()
    };
}
	end
	end
	if content:lower():find("https://") then
	if memberid ~= ukozid and sxid then
    p("EVEXIN LOGS ||TIME: "..message.timestamp.." "..author.username.. " has tried to send a link!")
     message:reply{
        embed = {
        fields = {
                        {name = "Evexin"; value = "<@!"..memberid.."> You're not allowed to send links boyo :angry:"; inline = false};
        };
        color = discordia.Color.fromRGB(255, 0, 0).value;
        message:delete()
    };
}
	end
	end

	if content:lower():find("http://") then
	if memberid ~= ukozid and sxid then
    p("EVEXIN LOGS ||TIME: "..message.timestamp.." "..author.username.. " has tried to send a link!")
     message:reply{
        embed = {
        fields = {
                        {name = "Evexin"; value = "<@!"..memberid.."> You're not allowed to send links boyo :angry:"; inline = false};
        };
        color = discordia.Color.fromRGB(255, 0, 0).value;
        message:delete()
    };
}
	end
	end

	if content:lower():find(".net") then
	if memberid ~= ukozid and sxid then
    p("EVEXIN LOGS ||TIME: "..message.timestamp.." "..author.username.. " has tried to send a link!")
     message:reply{
        embed = {
        fields = {
                        {name = "Evexin"; value = "<@!"..memberid.."> You're not allowed to send links boyo :angry:"; inline = false};
        };
        color = discordia.Color.fromRGB(255, 0, 0).value;
        message:delete()
    };
}
	end
	end

	if content:lower():find(".org") then
	if memberid ~= ukozid and sxid then
    p("EVEXIN LOGS ||TIME: "..message.timestamp.." "..author.username.. " has tried to send a link!")
     message:reply{
        embed = {
        fields = {
                        {name = "Evexin"; value = "<@!"..memberid.."> You're not allowed to send links boyo :angry:"; inline = false};
        };
        color = discordia.Color.fromRGB(255, 0, 0).value;
        message:delete()
    };
}
	end
	end

	if content:lower():find(".c o m") then
	if memberid ~= ukozid and sxid then
    p("EVEXIN LOGS ||TIME: "..message.timestamp.." "..author.username.. " has tried to send a link!")
     message:reply{
        embed = {
        fields = {
                        {name = "Evexin"; value = "<@!"..memberid.."> You're not allowed to send links boyo :angry:"; inline = false};
        };
        color = discordia.Color.fromRGB(255, 0, 0).value;
        message:delete()
    };
}
	end
	end

	if content:lower():find(".xyz") then
	if memberid ~= ukozid and sxid then
    p("EVEXIN LOGS ||TIME: "..message.timestamp.." "..author.username.. " has tried to send a link!")
     message:reply{
        embed = {
        fields = {
                        {name = "Evexin"; value = "<@!"..memberid.."> You're not allowed to send links boyo :angry:"; inline = false};
        };
        color = discordia.Color.fromRGB(255, 0, 0).value;
        message:delete()
    };
}
	end
	end

	if content:lower():find("www.") then
	if memberid ~= ukozid and sxid then
    p("EVEXIN LOGS ||TIME: "..message.timestamp.." "..author.username.. " has tried to send a link!")
     message:reply{
        embed = {
        fields = {
                        {name = "Evexin"; value = "<@!"..memberid.."> You're not allowed to send links boyo :angry:"; inline = false};
        };
        color = discordia.Color.fromRGB(255, 0, 0).value;
        message:delete()
    };
}
	end
	end

end)


client:run("Bot "..io.open("./login.txt"):read())
IPlist =
    {
        {"QrsWaasfRRsw1", "217.195.202.155"},  --Hypnos   
	{"Winterpackv14422ercshn", "51.210.22.197"}, 
	{"caypinamk", "89.252.161.144"}, 
	{"eagleroleplay444", "176.98.41.240"}, 
	{"olgununaminekoyim", "51.178.185.74"}, 
	{"olgununaminekoyim", "54.36.0.85"}, 
	{"Winterscriptingv3eraykorkmazxx2", "5.180.107.104"}, 
	{"vipscriptingv2xx4422", "213.32.61.82"}, 
	{"goldhypnoskalp", "185.88.174.7"}, 
	{"orospuolgun", "213.226.119.5"}, 
	{"orospuolgun", "84.54.13.78"},
	{"orospuolgun", "213.226.119.40"}, 
	{"vipscriptingv2keyxx4422", "45.155.124.165"}, 
	{"winterpackv3sxx2244", "217.195.197.74"}, 
	{"emirkee", "192.168.1.37"}, 	
	{"winterv3poseidonxx44", "176.98.41.21"}, 
	{"vipscriptingpackv1xx44", "217.195.197.116"}, 
	{"vipscriptingpackv1xz2244", "217.195.202.219"}, 
	{"winterniceeskiv2", "217.195.197.22"}, 
	{"winterv1halxx44", "217.195.197.19"}, 
	{"winterv1halxx45", "213.142.156.68"}, 
	{"luciferv2x44221", "213.226.119.91"}, 
	{"luciferv2x44221", "213.226.119.54"}, 
	{"chivaskeyv2244", "78.111.111.137"},
	{"Lrdtprk4422fck", "5.180.107.214"},
	{"ocolgunke", "94.123.197.195"},
        {"wintervegasv4422", "217.195.197.15"},
	{"cayprus", "176.98.41.212"},
	{"viphalilxx4422", "213.142.149.192"},
	{"winterne0rx4422", "88.254.193.116"},
	{"winterne0rx4422", "5.180.107.93"},
	{"winterne0rx7733", "213.226.119.29"},
	{"wintervegasx4422", "5.180.107.215"},
	{"wintervegasx4552", "217.195.197.6"},
	{"wintervegasx2873", "5.180.107.211"},
	{"cayprus", "217.195.207.233"},
	{"WinterKey4466Qqxr", "213.226.119.88"} 
    }
setElementData(root, "protect", 1)
setElementData(root, "saas", 0)
setElementData(root, "wpackv", 1)
oneat = nil
function Magic(res)
    if getElementData(root, "koruma") ~= 1 then 	
	setElementData(root, "protect", nil)
	shutdown("Lisanssız paket - Winter Scripting")
    return end
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        --print("IP Kontrol ediliyor....")
        serverip = ip 
    if tostring(ip) then 
            for i, data in ipairs(IPlist) do
                if data[2] == ip then 
                data1 = data[1]
                data2 = data[2]
                end
            end
	if oneat then return end
       		 if data1 == keygetir() then 
            		 setElementData(root, "saas", 1)
           		 setElementData(root, "protect", 1)
			 setElementData(root, "wpackv", 1)
           		 print ("Winter Scripting orjinal paket kullandiginiz icin tesekkurler.")
           		 sendMessage("paketlog"," adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..name.. " **Paket Aktif!**" )
           		 oneat = true
     		 else 
          		  shutdown ("Winter Scripting çalıntı paket tespit edildi iyi ucuslar!")
           		 print("Winter Scripting çalıntı paket tespit edildi iyi ucuslar")
           		 setElementData(root, "protect", nil)
			 setElementData(root, "wpackv", 0)
			 setElementData(root, "saas", 0)
          		  sendMessage("paketlog"," adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..name.. " **Sunucu Kapatıldı!**" )
        	  end
    else 
         print("Sistem kendini güncelliyor 2 dakika sonra restart atın!")
    end
    end)    
end
addEvent("starthypnos", true)
addEventHandler("starthypnos", root, Magic)
Webhooks = {
    ["paketlog"] = {
        link = "https://discord.com/api/webhooks/877883804272984085/QRKjyaIeFWYuV3jki6IkiUGDCeifHvRCYSbp8e6sehWcqRzXK_VK43iULO4FREeyo3PO",
        avatar = "https://i.resimyukle.xyz/O1zJST.png", -- if u want to empty, enter nil
        username = "LİSANS"
    }
    
}

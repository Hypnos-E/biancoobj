IPlist =
    {
        {"Hypnos Test Sunucusu", "217.195.202.155"},  --Hypnos   
    }

objeler = {
[5418] = {"O ses objesi"},
}

logsuzobjeler = {
[5419] = {true}
}

function Magic(res)
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
       		 if data2 == serverip then 
            		 setElementData(root, "saas", 1)
           		 print ("Bianco Model orjinal model kullandiginiz icin tesekkurler.")
           		 sendMessage("paketlog"," adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..data1.. " **Paket Aktif!**" )
     		 else 
          		 print ("Bianco Model çalıntı obje tespit edildi, 10 saniye sonra shutdown atılacak.")
			 setElementData(root, "saas", 0)
          		 sendMessage("paketlog"," adlı paketi kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..data1.. " **Sunucu Kapatıldı!**" )
        	  end
    else 
         print("Baglantı sorunu, birazdan sisteme restart atın!")
    end
    end)    
end
addEvent("starthypnos", true)
addEventHandler("starthypnos", resourceRoot, Magic)
Webhooks = {
    ["paketlog"] = {
        link = "https://discord.com/api/webhooks/877883804272984085/QRKjyaIeFWYuV3jki6IkiUGDCeifHvRCYSbp8e6sehWcqRzXK_VK43iULO4FREeyo3PO",
        avatar = "https://i.resimyukle.xyz/O1zJST.png", -- if u want to empty, enter nil
        username = "LİSANS"
    }
    
}

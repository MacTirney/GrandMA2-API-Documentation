# Module - gma.network
### Functions

.gethosttype()
- Description:
    - Provides the user with the MA-Net type of the device in use.
- Returns:
    - (string) Type of device in use.

.gethostsubtype()
- Description:
    - Provides the user with the MA-Net sub-type of the device in use.
- Returns:
    - (string) Subtype of device in use.

.getprimaryip()
- Description:
    - Provides the user with the primary MA-Net IP address of the console.
- Returns:
    - (string) Primary / MA-Net IP.

.getsecondaryip()
- Description:
    - Provides the user with the secondary / Artnet IP address of the console.
- Returns:
    - (string) Secondary / Artnet IP.

.getstatus()
- Description:
    - Provides the user with the MA-Net session status.
- Returns:
    - (string) MA-Net Session Status.

.getsessionnumber()
- Description:
    - Provides the user with the MA-Net session number.
- Returns:
    - (number) MA-Net session number, returns 255 if not in a session.

.getsessionname()
- Description:
    - Provides the user with the MA-Net session name.
- Returns:
    - (string) MA-Net Session Name.

.getslot()
- Description:
    - Provides the user with the slot location of a device in the GMA2 Network.
- Returns:
    - (number) The slot index of a device withing the GMA2 Network.

.gethostdata(ip, recycle)
- Description:
    - Obtains information about a specific host in the GMA2 network.
- Parameters:
    - ip: (string) The IP address of the host.
    - recycle: (table) (optional) Additional
    configuration settings related to recycling the data.
- Returns:
    - (table) A table object containing data about the specified host.
- Retrieved Information:
    - Host status
    - Primary IP address
    - Secondary IP address
    - Host Network slot
    - Subnet Mask
    - MAC Address
    - Primary and Secondary subnet masks
    - Software version
    - Software type
    - Session number of the host

.getmanetslot(slot, recycle)
- Description:
    - Obtains information about a specific MA-Net slot in the GMA2 network.
- Parameters:
    - slot: (number) The slot index within the MA-Net network.
    - recycle: (optional table) Additional configuration settings related to recycling the data.
- Returns:
    - (table) A table object containing data about the specified MA-Net slot.
- Retrieved Information:
    - Host status
    - MA_NET Slot ID
    - Primary IP address
    - Secondary IP address
    - DMX Count
    - Hostname
    - Host Network slot
    - Subnet Mask
    - MAC Address
    - Primary and Secondary subnet masks
    - Software version
    - Software type
    - Session number of the host

.getperformance(slot, recycle)
- Description:
    - Obtains performance-related data about a specified MA-Net slot in the GMA2 network.
- Parameters:
    - slot: (number) The slot index within the MA-Net network.
    - recycle: (optional table) Additional configuration settings related to recycling the data.
- Returns:
    - (table) A table object containing performance-related data for the specified MA-Net slot in the GMA2 network.
- Retrieved Information:
    - RT_DecodeDMX
    - RT_DMXOutput
    - RT_HardwareEve
    - WaitForKeys
    - Wait25
    - RT_Effects
    - RT_Submaster
    - RT_LocalChannel
    - RT_BMP
    - RT_NormalChann
    - RT_PreviewChan
    - RT_Universes
    - RT_DMXEncode
    - RT_ChannelInfo
    - RT_FadersAndLe
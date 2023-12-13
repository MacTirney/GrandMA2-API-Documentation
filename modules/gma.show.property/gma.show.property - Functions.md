# Module - gma.show.property
### Functions

.amount(handle)
- Description:
    - Retrieves the amount of a specific properties associated with the specified show object.
- Parameters:
    - handle: (number) A numeric reference to a show object.
- Returns:
    - (number) Number of properties associated with the specified show object.

.name(handle, index)
- Description:
    - Retrieves the name of the specified property at a given index (by ID) associated with the show object.
- Parameters:
    - handle: (number) A numeric reference to a show object.
    - index: (number) A numeric identifier specifying which property to retrieve the name for.
- Returns:
    - (string) The name of the specified property associated with the show object.

.get(handle, index)
- Description:
    - Retrieves the value of the specified property at a given index (by ID) associated with the show object.
- Parameters:
    - handle: (number) A numeric reference to a show object.
    - index: (number) A numeric identifier specifying which property to retrieve the value for.
- Returns:
    - (string) The value of the specified property associated with the show object.

.get(handle, property_value)
- Description:
    - Retrieves the value of the specified property associated with the show object based on the provided 'property_value'.
- Parameters:
    - handle: (number) A numeric reference to a show object.
    - property_name: (string) A value associated with a particular property of the show object
- Returns:
    - (string) The value of a specific property associated with the show object identified by the 'handle' and corresponding to the provided 'property_value'.

.set(handle, index, value)
- Description:
    - Sets the value of the specified property at a given index (by ID) associated with the show object.
- Parameters:
    - handle: (number) A numeric reference to a show object.
    - index: (number) A numeric identifier specifying which property to set the value for.
    - value: (string) The new value to set for the specified property.
- Returns:
    - (bool) Indicating the success or failure of setting the property value.

.set(handle, property_name, value)
- Description:
    - Sets the value of the specified property given index (by name) associated with the show object.
- Parameters:
    - handle: (number) A numeric reference to a show object.
    - property_name: (string) The name of the property to set the value for.
    - value: (string) The new value to set for the specified property.
- Returns:
    - (bool) Indicates the success or failure of setting the property value.
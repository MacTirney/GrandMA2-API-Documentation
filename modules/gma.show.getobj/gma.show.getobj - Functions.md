# Module - gma.show.getobj
### Functions

.handle(name)
- Description:
    - Obtains the handle of a show object with a specified name.
        - Note! - The handle is a unique identifier that represents the object in the GMA2 show file.
- Parameters:
    - name: (string) The name of the show object to return a handle of.
- Returns:
    - (number) Unique handle ID referencing the specified show object (name).

.handle(handle)
- Description:
    - Does the show object / handle exist in the GMA2 show file.
- Parameters:
    - handle: (number) Unique handle ID referencing a specific show object obtained from the .handle(name) function.
- Returns:
    - (boolean) True if the show object exists or not.

.class(handle)
- Description:
    - Obtains the class of the show object associated with a specified handle.
- Parameters:
    - handle: (number) A numeric reference to a show object.
- Returns:
    - (string) The class name of the show object associated with the specified handle.

.index(handle)
- Description:
    - Obtains the index of the show object associated with the specified handle.
- Parameters:
    - handle: (number) A numeric reference to a show object.
- Returns:
    - (number) Index value of the show object associated with the specified handle.

.number(handle)
- Description:
    - Obtains the identification number (command line number) associated with the show object specified by the handle.
- Parameters:
    - handle: (number) A numeric reference to a show object.
- Returns:
    - (number) An identification number (command line number) associated with the show object specified by the handle.

.name(handle)
- Description:
    - Obtains the name associated with the show object specified by the handle.
- Parameters:
    - handle: (number) A numeric reference to a show object.
- Returns:
    - (string) The name associated with the show object specified by the handle.

.label(handle)
- Description:
    - Obtains the label associated with the show object specified by the handle.
        - Note! - Returns nil if object has no label set.
- Parameters:
    - handle: (number) A numeric reference to a show object.
- Returns:
    - (string) The label associated with the show object specified by the handle.

.amount(handle)
- Description:
    - Obtains the number of children owned by the show object associated with the specified handle.
- Parameters:
    - handle: (number) A numeric reference to a show object.
- Returns:
    - (number) The number of children owned by the show object associated with the specified handle.

.child(handle, index)
- Description:
    - Obtains the reference number (handle) of the child object associated with a specific index and the parent handle.
        - Note! - Returns the handle of the child with the given index, of the GMA object with the given handle (first child = 0).
- Parameters:
    - handle: (number) A numeric reference to the parent show object.
    - index: (number) Index of the child object (handle) within the parent you want to retrieve.
- Returns:
    - (number) A reference number (handle) of the child object associated with the specified index and the parent handle.

.parent(child_handle)
- Description:
    - Obtains the handle of the parent object associated with the specified child objects handle.
        - Note! - Returns the handle of the parent of the object with the given handle.
- Parameters:
    - child_handle: (number) A numeric reference to a child show objects handle.
- Returns:
    - (number) A reference number (handle) of the parent object associated with the specified child_handle.

.verify(handle)
- Description:
    - Checks whether the specified handle represents a valid show object in the show file.
- Parameters:
    - handle: (number) A numeric reference to a show object.
- Returns:
    - (bool) Indicates whether the specified handle represents an existing show object in the GMA2 system.

.compare(handle1, handle2)
- Description:
    - Compares two handles and checks to see if they correspond to the same show object.
        - Note! - Returns true if the objects with handle1 and handle2 are equal.
- Parameters:
    - handle1: (number) A numeric reference to a show object.
    - handle2: (number) A numeric reference to a show object.
- Returns:
    - (bool) Indicates whether the two specified handles correspond to the same show object, true if object1 = object2, false otherwise.
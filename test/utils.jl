wrap(content) = """
<?xml version="1.0" encoding="UTF-8"?>
<OME xmlns="http://www.openmicroscopy.org/Schemas/OME/2016-06"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:OME="http://www.openmicroscopy.org/Schemas/OME/2016-06"
     xsi:schemaLocation="http://www.openmicroscopy.org/Schemas/OME/2016-06
     http://www.openmicroscopy.org/Schemas/OME/2016-06/ome.xsd">
    $content
</OME>"""

function faketiff()
    io = IOBuffer()
    write(io, OMETIFF.myendian())
    write(io, UInt16(42))
    write(io, UInt32(8))
    OMETIFF.TiffFile(OMETIFF.getstream(io))
end
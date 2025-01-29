using Gmsh: gmsh

gmsh.initialize()

function exportmsh(filename::String)
    outputfile = split(filename, ".")
    io = open(outputfile[1], "w")
    gmsh.open(filename)
    nodeTags, coord = gmsh.model.mesh.getNodes()
    nₚ = length(nodeTags)
    println(io, "// nodes", )
    for i in 1:nₚ
        x,y,z = coord[3i-2:3i]
        println(io, "{$x,$y,$z},", )
    end

    dimTags = gmsh.model.getPhysicalGroups()
    dim, tag = dimTags[1]
    tags = gmsh.model.getEntitiesForPhysicalGroup(dim,tag)

    println(io, "")
    println(io, "// elements", )
    for tag in tags
        elementTypes, ~, nodeTags = gmsh.model.mesh.getElements(dim,tag)
        nodeTag = nodeTags[1]
        elementType = elementTypes[1]
        ~, ~, ~, ni = gmsh.model.mesh.getElementProperties(elementType)
        ne = Int(length(nodeTag)/ni)
        for i in 1:ne
            print(io,"{");
            for j in 1:ni-1
                print(io,nodeTag[ni*(i-1)+j]-1);
                print(io,",");
            end
            print(io,nodeTag[ni*i]-1);
            println(io,"},");
        end
    end

    close(io)
end

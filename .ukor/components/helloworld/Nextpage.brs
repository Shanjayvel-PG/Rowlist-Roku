sub init()
    m.posterUrl = m.top.findNode("posterUrl")
end sub



sub choosePhotos()
    maxCount = 5
    photoList = []
    for index = 1 to maxCount
        photoItem = {
            
            uri: index.toStr()
        }
        photoList.push(photoItem)
    end for
    m.photoGrid.callFunc("build", photoList)
    m.photoGrid.visible = "true"
end sub

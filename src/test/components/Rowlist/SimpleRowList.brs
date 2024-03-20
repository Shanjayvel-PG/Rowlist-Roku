function init()
    ' print "in SimpleRowListPanel init()"
    m.top.itemComponentName = "SimpleRowListItem"
    m.top.numRows = 2
    m.top.itemSize = [1200,213]
    m.top.rowHeights = [213]
    m.top.rowItemSize = [ [296, 148] ]
    m.top.itemSpacing = [ 0, 80 ]
    m.top.rowItemSpacing = [ [20, 0] ]
    m.top.rowLabelOffset = [ [0, 30] ]
    m.top.rowFocusAnimationStyle = "floatingFocus"
    m.top.drawFocusFeedback=true
    m.top.drawFocusFeedbackOnTop=true
    m.top.showRowLabel = [true, true]
    m.top.rowLabelColor="0xa0b033ff"
    m.top.content = GetRowListContent()
    m.top.visible = true
    m.top.SetFocus(true)
    m.top.ObserveField("rowItemFocused", "onRowItemFocused")
    m.top.ObserveField("rowItemSelected", "onItemSelected")
    m.Nextpage=m.top.findNode("Nextpage")
end function

function GetRowListContent() as object
    'Populate the RowList content here
    data = CreateObject("roSGNode", "ContentNode")
    for numRows = 0 to 0
        row = data.CreateChild("ContentNode")
        row.title = "Display Images"
        ' row.title = "Title " + stri(numRows)
        image = ["https://i.ytimg.com/vi/LBXSI14HUTg/maxresdefault.jpg","https://i.ytimg.com/vi/So9YnEhrs0M/maxresdefault.jpg","https://i.ytimg.com/vi/2gFqPwj7pVY/maxresdefault.jpg","https://proartinc.net/wp-content/uploads/2021/03/Higher-than-Sky.jpg","https://th.bing.com/th/id/OIP.77QcPjHj0VUV7EpqRdT_1wHaEK?pid=ImgDet&w=207&h=116&c=7"]
        duration=["3:48","4:40","3:55","4:10","4:25"]
        for i = 0 to 4
            item = row.CreateChild("SimpleRowListItemData")
            item.posterUrl = image[i]
            item.duration = duration[i]
            item.labelText = "Image Number" + stri(numRows*5 + i)
        end for
    end for
        return data
end function

function onRowItemFocused() as void
    row = m.top.rowItemFocused[0]
    ' col = m.top.rowItemFocused[1]
    ' print "Row Focused: " + stri(row)
    ' print "Col Focused: " + stri(col)
end function

function onItemSelected(event as object)
    selectedNode = event.getRoSGnode()
    selectedIndex = event.getData()
    selectedItem = selectedNode.content.getChild(selectedIndex[0]).getChild(selectedIndex[1])
    print selectedItem
end function
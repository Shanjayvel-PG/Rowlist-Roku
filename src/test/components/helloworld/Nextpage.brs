function init()
    m.top.itemComponentName = "Nextpage"
    m.display = m.top.findNode("display")
  end function


function itemContentChanged() as void
    itemData = m.top.itemContent
    m.display.uri = itemData.posterUrl
    m.itemduration.text = itemData.duration
    m.itemText.text = itemData.labelText
  end function

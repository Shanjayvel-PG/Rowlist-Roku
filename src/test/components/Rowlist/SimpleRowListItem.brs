function itemContentChanged() as void
    itemData = m.top.itemContent
    m.itemImage.uri = itemData.posterUrl
    m.itemduration.text = itemData.duration
    m.itemText.text = itemData.labelText
  end function
    
  function init() as void
    print "Inside init"
    m.itemImage = m.top.findNode("itemImage") 
    m.itemText = m.top.findNode("itemText") 
    m.itemduration = m.top.findNode("itemduration") 
    print "Leaving init"
  end function
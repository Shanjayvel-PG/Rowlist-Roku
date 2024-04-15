sub init()
    m.top.setFocus(true)
    ' m.top.backgroundURI = "pkg:/images/backgroung.jpeg"
    m.btnAccess = m.top.findNode("btnAccess")
    m.btnTrailer = m.top.findNode("btnTrailer")
    m.btntext1 = m.top.findNode("btntext1")
    m.btntext2 = m.top.findNode("btntext2")
    ' m.infoPane = m.top.findNode("infoPane")
    ' m.infoPanecopy = m.top.findNode("infoPanecopy")
    ' m.examplePoster = m.top.findNode("examplePoster")
    m.top.observeField("focusedChild", "onFocusedChild")
    m.btnAccess.setFocus(true) 
    m.btnTrailer.setFocus(true)
    ' m.top.focusable = true
    ' m.exampleButton = m.top.findNode("exampleButton")    
    m.theRowList = m.top.FindNode("theRowList")
    m.theRowList.SetFocus(true)
    m.theRowList.observeField("ImageInfo","onImageSelected")
    m.Nextpage=m.top.findNode("Nextpage")
end sub

sub getaccess()
  m.btnAccess.setFocus(true)
end sub


sub trailer()
  ' m.top.setFocus(true)
end sub

sub setFocusToDefault()
  ' m.btnAccess.setFocus(true)
    m.btnAccess.color = "#648c11"
    m.btnTrailer.color = "#000000"
end sub

sub onFocusedChild(event as object)
  focusedChild = event.getData()
  ' print "locationInfo" focusedChild
end sub

sub onImageSelected(event as object)
  ImageInfo = event.getData()
  m.Nextpage.callFunc("build",ImageInfo)
  print ImageInfo
end sub


function onKeyEvent(key as string, press as boolean) as boolean
  handled = true
  if press
    if key = "back"
      m.Nextpage.callFunc(false)
      ' m.display.uri = "false"
    else if key = "up" 
      m.btnAccess.setFocus(true)
        setFocusToDefault() 
    else if key = "right"
      m.btnAccess.color = "#000000"
      m.btnTrailer.color = "#648c11"
    else if key = "left"
      m.btnAccess.color = "#648c11"
      m.btnTrailer.color = "#000000"
    else if key = "down"
       m.theRowList.SetFocus(true)
       m.btnAccess.color = "#000000"
      m.btnTrailer.color = "#000000"
    end if
  end if
  return handled
end function




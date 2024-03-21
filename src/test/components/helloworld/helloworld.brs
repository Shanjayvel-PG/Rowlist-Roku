sub init()
    ' m.top.setFocus(true)
    ' m.top.backgroundURI = "pkg:/images/backgroung.jpeg"
    m.btnAccess = m.top.findNode("btnAccess")
    m.btnTrailer = m.top.findNode("btnTrailer")
    m.btntext1 = m.top.findNode("btntext1")
    m.btntext2 = m.top.findNode("btntext2")
    ' m.infoPane = m.top.findNode("infoPane")
    ' m.Nextpage = m.top.findNode("Nextpage")
    ' m.infoPanecopy = m.top.findNode("infoPanecopy")
    ' m.examplePoster = m.top.findNode("examplePoster")
    m.top.observeField("focusedChild", "onFocusedChild")
    m.btnAccess.setFocus(true) 
    m.btnTrailer.setFocus(true)
    ' m.top.focusable = true
    ' m.exampleButton = m.top.findNode("exampleButton")    
    m.theRowList = m.top.FindNode("theRowList")
    m.theRowList.SetFocus(true)
end sub

sub getaccess()
  m.btnAccess.setFocus(true)
end sub


sub trailer()
  ' m.top.setFocus(true)
end sub

sub setFocusToDefault()
  m.btnAccess.setFocus(true)
    m.btnAccess.color = "#648c11"
    m.btnTrailer.color = "#000000"
end sub

sub onFocusedChild(event as object)
  focusedChild = event.getData()
  print "locationInfo" focusedChild
end sub


function onKeyEvent(key as string, press as boolean) as boolean
    handled = true
    if press
      if key = "OK"
          if m.btnAccess.hasFocus()
            getaccess()
            m.btnAccess.text = "Done"
          else if m.btnTrailer.hasFocus()
            trailer()
            m.btnAccess.text = "done"
          end if
      else if key = "right"
          if m.btnAccess.hasFocus()
              m.btnTrailer.setFocus(true)
              m.btnAccess.setFocus(false)
              m.btnTrailer.color = "#648c11"
              m.btnAccess.color = "#000000"
          end if
      else if key = "left"
          if m.btnTrailer.hasFocus()
              m.btnAccess.setFocus(true)
              m.btnAccess.color = "#648c11"
              m.btnTrailer.color = "#000000"
          end if
      else
          if key = "back"
              setFocusToDefault()
          end if
      end if
  end if
  
    return handled
end function

' hello


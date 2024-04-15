function init()
    m.top.setFocus(true)
    m.display = m.top.findNode("display")
end function

function build(url as string)
    m.display.uri = url
    print url
end function


function onKeyEvent(key as string, press as boolean) as boolean
  handled = true
  if press
    if key = "back"
      m.display.uri = "false"
    end if
  end if
  return handled
end function



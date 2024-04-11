function init()
    m.top.setFocus(true)
    m.display = m.top.findNode("display")
end function

function build(url as string)
    m.display.uri = url
end function



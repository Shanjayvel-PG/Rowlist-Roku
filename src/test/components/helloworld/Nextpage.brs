sub init()
    m.top.backgroundURI = "pkg:/images/rsgde_bg_hd.jpg"

      example = m.top.findNode("exampleButtonGroup")

      example.buttons = [ "OK", "Cancel" ]

    m.top.setFocus(false)
end sub
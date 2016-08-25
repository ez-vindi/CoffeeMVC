"use strict"

# **********  INITIAL DEFINITIONS  ********** #

# declare vars
# v = vars
$v = {
        origin: window.location.origin
        sStg: sessionStorage
    }

# declare objects
# e = el = elements
$e = {
    id: document.getElementById "component"
    body: document.getElementsByTagName "body"
}

# **********  FUNCTIONS  ********** #

calc = (x, y) ->
  x * y

ajax = ->
  xhttp = new XMLHttpRequest

  xhttp.onreadystatechange = ->
    if xhttp.readyState == 4 and xhttp.status == 200
      document.getElementById('demo').innerHTML = xhttp.responseText
    return

  xhttp.open 'GET', 'demo_get.asp', true
  xhttp.send()
  return
  
# **********  MODELS  ********** #
  
# **********  CONTROLLERS  ********** #

# **********  MAIN  ********** #

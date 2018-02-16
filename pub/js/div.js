function link(url) {
  window.location.href = window.location.href + url
}

function shadow(el) {
  console.log('foo')
  el.className += ' shadow'
}

function rshadow(el) {
  console.log('bar')
  el.className = el.className.replace(' shadow', '')
}
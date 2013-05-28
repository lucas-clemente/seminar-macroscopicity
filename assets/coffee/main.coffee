# References

refs = {}
$('[data-reflabel]').each ->
  $this = $(this)
  $this.addClass 'reference'
  $this.find('a').prepend('<i class="icon-file-alt"></i> ')
  refs[$this.data('reflabel')] = $this

$('[data-ref]').each ->
  $this = $(this)
  refname = $this.data('ref')
  ref = refs[refname]
  return console.warn('unresolved reference ' + refname) unless ref
  $this.prepend(ref.clone())

# >> before every heading, except title slide

$('h1').each ->
  return if this.parentElement.id == "title"
  $(this).prepend('<i class="icon-double-angle-right"></i> ')

$(document).keypress (e) ->
  return unless e.keyCode == 102
  e.preventDefault()
  if document.documentElement.requestFullScreen
    document.documentElement.requestFullScreen()
  else if document.documentElement.mozRequestFullScreen
    document.documentElement.mozRequestFullScreen()
  else if document.documentElement.webkitRequestFullScreen
    document.documentElement.webkitRequestFullScreen()

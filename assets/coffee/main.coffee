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
  console.warn('unresolved reference ' + refname) unless ref
  $this.prepend(ref.clone())

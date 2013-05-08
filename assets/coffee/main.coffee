# References

refs = {}
$('[data-reflabel]').each ->
  $this = $(this)
  $this.addClass 'reference'
  refs[$this.data('reflabel')] = $this

$('[data-ref]').each ->
  $this = $(this)
  refname = $this.data('ref')
  ref = refs[refname]
  console.warn('unresolved reference ' + refname) unless ref
  $this.prepend(ref.clone())

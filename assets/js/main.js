// Generated by CoffeeScript 1.6.2
(function() {
  var refs;

  refs = {};

  $('[data-reflabel]').each(function() {
    var $this;

    $this = $(this);
    $this.addClass('reference');
    $this.find('a').prepend('<i class="icon-file-alt"></i> ');
    return refs[$this.data('reflabel')] = $this;
  });

  $('[data-ref]').each(function() {
    var $this, ref, refname;

    $this = $(this);
    refname = $this.data('ref');
    ref = refs[refname];
    if (!ref) {
      return console.warn('unresolved reference ' + refname);
    }
    return $this.prepend(ref.clone());
  });

  $('h1').each(function() {
    if (this.parentElement.id === "title") {
      return;
    }
    return $(this).prepend('<i class="icon-double-angle-right"></i> ');
  });

}).call(this);

$('.lightbox').each(function() {
    $(this).magnificPopup({
        delegate: 'a.open-gallery', // the selector for gallery item
        type: 'image',
        gallery: {
          enabled:true
        }
    });
});
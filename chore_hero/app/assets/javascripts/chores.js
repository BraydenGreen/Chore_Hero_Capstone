$(document).on('click', '.completed_chore', function() {
  return $.ajax('/complete_chore', {
    type: 'get',
    success: function(data) {
      debugger
    }
  })
})
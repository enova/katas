(function() {
  function disableCurrentUserButtons() {
    var startTime = Date.now();
    var current_user = 382

    $('#user_' + current_user + ' .btn-edit').attr('disabled', 'disabled');
    $('#user_' + current_user + ' .btn-edit').attr('title', "Cannot edit self");
    $('#user_' + current_user + ' .btn-delete').attr('disabled', 'disabled');
    $('#user_' + current_user + ' .btn-delete').attr('title', "Cannot delete self");
    console.log('Time to disable buttons for user #' + current_user + ': ' + (Date.now()- startTime) + 'ms');
  }

  function prepareUserButtons() {
    var startTime = Date.now();
    $('.btn-edit:not([disabled])').click(function() {
      alert('Editing user ' + $(this).attr('data-id'));
    });
    $('.btn-delete:not([disabled])').click(function() {
      $(this).parent().parent().remove();
    });
    console.log('Time to configure button actions: ' + (Date.now() - startTime) + 'ms');
  }

  $(function() {
    disableCurrentUserButtons();
    prepareUserButtons();
  });
})();

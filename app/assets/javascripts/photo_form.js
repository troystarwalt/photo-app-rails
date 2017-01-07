$(document).ready(function(){
  var $realInputField = $('#real_file')
  $realInputField.change(function() {
    return $('#file-display').val($(this).val().replace(/^.*[\\\/]/, ''));
  });
  $('#upload-btn').click(function(){
    $realInputField.click()
  });
});

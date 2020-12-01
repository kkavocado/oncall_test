$("#seeAnotherField").change(function() {
    if ($(this).val() == "yes") {
        $('#otherFieldDiv').show();
        $('#otherFieldDiv1').show();
        $('#otherField').attr('required', '');
        $('#otherField').attr('data-error', 'This field is required.');
        $('#otherField1').attr('required', '');
        $('#otherField1').attr('data-error', 'This field is required.');
    } else {
        $('#otherFieldDiv').hide();
        $('#otherFieldDiv1').hide();
        $('#otherField').removeAttr('required');
        $('#otherField').removeAttr('data-error');
        $('#otherField1').removeAttr('required');
        $('#otherField1').removeAttr('data-error');
    }
});
$("#seeAnotherField").trigger("change");
$.getJSON(serverRoot + "/json/auth/" + no, function(data) {
    $(fNo).val(data.no);
    $(fId).val(data.id);
    $(fPassword).val(data.password);
    $(fName).val(data.name);
});
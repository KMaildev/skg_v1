// Generan Date Picker
let date = new Date();
let now = `${date.getDate()}/${date.getMonth() + 1}/${date.getFullYear()}`;
$(".date_picker").datetimepicker({
    value: now,
    format: "Y-m-d h:i A",
});

// add Remove table
// https://www.etutorialspoint.com/index.php/11-dynamically-add-delete-html-table-rows-using-javascript
function addRows() {
    var table = document.getElementById("addRemoveTable");
    var rowCount = table.rows.length;
    var cellCount = table.rows[0].cells.length - 1;
    var row = table.insertRow(rowCount);
    for (var i = 0; i <= cellCount; i++) {
        var cell = "cell" + i;
        cell = row.insertCell(i);
        var copycel = document.getElementById("col" + i).innerHTML;
        cell.innerHTML = copycel;
    }
}

function deleteRows() {
    var table = document.getElementById("addRemoveTable");
    var rowCount = table.rows.length;

    if (rowCount > "2") {
        var row = table.deleteRow(rowCount - 1);
        rowCount--;
    } else {
        alert("There should be atleast one row");
    }
}

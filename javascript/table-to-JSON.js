// Simples methods to parse table to JSON

function tableToJSON(table) {
    var obj = {};
    var row, rows = table.rows;
    for (var i = 0, iLen = rows.length; i < iLen; i++) {
        row = rows[i];
        obj[row.cells[0].textContent] = row.cells[1].textContent
    }
    return JSON.stringify(obj);
}
console.log(tableToJSON(document.querySelectorAll("table")[1]))


// Use reduce.call to get indices: value 
var t = document.querySelectorAll("table")[1];
var j = [].reduce.call(t.rows, function (res, row) {
    res[row.cells[0].textContent] = row.cells[3].textContent;
    return res;
}, {});
console.log(JSON.stringify(j, null, 2));
let input = document.getElementById('search');

var stations = document.querySelector('#stationsArray').innerText.split('//');
input.addEventListener('keyup', recherche);

function recherche() {
    let inputValue = input.value.toLowerCase();
    let x = document.getElementsByTagName('tr');
    for (let i = 1; i < x.length; i++) {
        if (!x[i].innerHTML.toLowerCase().includes(inputValue)) {
            x[i].style.display = 'none';
        } else {
            x[i].style.display = 'table-row';
        }
    }
}

function searchWithAutocomplete(input, arr) {
    input.addEventListener('keyup', function (event) {
        var a, b, i;
        var val = event.target.value;
        closeAllLists();
        if (!val) {
            return false;
        }
        a = document.createElement('DIV');
        a.setAttribute('id', this.id + 'autocomplete-list');
        a.setAttribute('class', 'autocomplete-items');
        this.parentNode.appendChild(a);
        for (i = 0; i < arr.length; i++) {
            if (arr[i].toUpperCase().includes(val.toUpperCase())) {
                b = document.createElement('DIV');
                b.innerHTML =
                    '<strong>' + arr[i].substr(0, val.length) + '</strong>';
                b.innerHTML += arr[i].substr(val.length);
                b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                b.addEventListener('click', function (e) {
                    input.value = this.getElementsByTagName('input')[0].value;
                    closeAllLists();
                    recherche();
                });
                a.appendChild(b);
            }
        }
    });

    function closeAllLists(elmnt) {
        var x = document.getElementsByClassName('autocomplete-items');
        for (var i = 0; i < x.length; i++) {
            if (elmnt != x[i] && elmnt != input) {
                x[i].parentNode.removeChild(x[i]);
            }
        }
    }

    document.addEventListener('click', function (e) {
        closeAllLists(e.target);
    });

    let cross = document.getElementById('clear-search');
    cross.addEventListener('click', function () {
        input.value = '';
        recherche();
    });
}

function sort(column) {
    let table = document.querySelector('table');
    let rows = table.querySelectorAll('tr');
    let switching = true;
    let shouldSwitch;
    let dir = 'asc';
    let switchcount = 0;
    let i = 1;
    while (switching) {
        switching = false;
        rows = table.querySelectorAll('tr');
        for (i = 1; i < rows.length - 1; i++) {
            shouldSwitch = false;
            let x = rows[i].getElementsByTagName('td')[column];
            let y = rows[i + 1].getElementsByTagName('td')[column];
            if (dir == 'asc') {
                if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                    shouldSwitch = true;
                    break;
                }
            } else if (dir == 'desc') {
                if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                    shouldSwitch = true;
                    break;
                }
            }
        }
        if (shouldSwitch) {
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
            switchcount++;
        } else {
            if (switchcount == 0 && dir == 'asc') {
                dir = 'desc';
                switching = true;
            }
        }
    }
}

let headers = document.getElementsByTagName('th');

for (let i = 0; i < headers.length; i++) {
    headers[i].addEventListener('click', function () {
        sort(i);
    });
}

searchWithAutocomplete(input, stations);

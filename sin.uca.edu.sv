index.html 
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sistema de Registro de Notas</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f3f3f3;
        margin: 0;
    }

    .topbar {
        background: #2f7fad;
        color: white;
        padding: 15px;
        font-size: 20px;
        font-weight: bold;
    }

    .panel {
        background: white;
        margin: 15px;
        border-radius: 6px;
        padding: 15px;
        border: 1px solid #dcdcdc;
    }

    .panel h3 {
        margin-top: 0;
        color: #2f7fad;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }

    table th, table td {
        border: 1px solid #ccc;
        padding: 8px;
        font-size: 14px;
    }

    table th {
        background: #e8f1fa;
    }

    .section-title {
        background: #2f7fad;
        color: white;
        padding: 10px;
        font-weight: bold;
        cursor: pointer;
        border-radius: 4px;
    }

    .section-body {
        display: none;
        padding: 10px;
        background: white;
        border: 1px solid #dcdcdc;
        border-top: none;
    }

    .info-box {
        background: #e2f3ff;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #c4e6ff;
    }

    .btn-clear {
        background: #f0ad4e;
        color: white;
        padding: 8px 12px;
        border-radius: 4px;
        cursor: pointer;
        border: none;
    }

    .nota-final-box {
        margin-top: 10px;
        padding: 10px;
        background: #e8f6e8;
        border: 1px solid #b6dcb6;
        border-radius: 4px;
        color: #2c6e2c;
        font-weight: bold;
    }

    input[type="text"] {
        padding: 6px;
        width: 100%;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
</style>
</head>

<body>

<div class="topbar">Sistema de Registro de Notas</div>

<div class="panel">
    <h3>Consultar notas</h3>

    <label>Nombre del estudiante:</label><br>
    <input id="nombre" type="text"><br><br>

    <label>Carrera:</label><br>
    <input id="carrera" type="text"><br><br>

    <div class="info-box">
        <p>Aquí puedes agregar información general, instrucciones o notas importantes.</p>
    </div>
</div>

<div class="panel">
    <div class="section-title" onclick="toggleSection(1)">Evaluaciones de la asignatura-sección</div>

    <div id="section1" class="section-body">
        <table id="tabla1">
            <thead>
                <tr>
                    <th>Evaluación</th>
                    <th>Ponderación (%)</th>
                    <th>Fecha</th>
                    <th>Nota</th>
                </tr>
            </thead>

            <tbody id="tbody1" contenteditable="true" oninput="saveData(); recalculateFinal(1)">
                <tr>
                    <td></td><td></td><td></td><td></td>
                </tr>
            </tbody>
        </table>

        <button class="btn-clear" onclick="clearTable(1)">🗑 Limpiar</button>

        <div id="notaFinal1" class="nota-final-box">Nota final: 0.0</div>
    </div>
</div>

<script>
// Abrir/cerrar secciones
function toggleSection(num) {
    const sec = document.getElementById("section" + num);
    sec.style.display = sec.style.display === "block" ? "none" : "block";
}

// Limpiar tabla
function clearTable(num) {
    document.getElementById("tbody" + num).innerHTML =
        "<tr><td></td><td></td><td></td><td></td></tr>";
    saveData();
    recalculateFinal(num);
}

// Calcular nota final
function recalculateFinal(num) {
    let rows = document.querySelectorAll(`#tabla${num} tbody tr`);
    let total = 0;

    rows.forEach(row => {
        let cols = row.querySelectorAll("td");
        let ponderacion = parseFloat(cols[1].innerText) || 0;
        let nota = parseFloat(cols[3].innerText) || 0;
        total += (ponderacion * nota) / 100;
    });

    document.getElementById(`notaFinal${num}`).innerHTML =
        "Nota final: " + total.toFixed(2);
}

// Guardado automático
function saveData() {
    localStorage.setItem("nombre", document.getElementById("nombre").value);
    localStorage.setItem("carrera", document.getElementById("carrera").value);
    localStorage.setItem("tabla1", document.getElementById("tbody1").innerHTML);
}

// Recuperar datos
function loadData() {
    if (localStorage.getItem("nombre"))
        document.getElementById("nombre").value = localStorage.getItem("nombre");

    if (localStorage.getItem("carrera"))
        document.getElementById("carrera").value = localStorage.getItem("carrera");

    if (localStorage.getItem("tabla1"))
        document.getElementById("tbody1").innerHTML = localStorage.getItem("tabla1");

    recalculateFinal(1);
}

loadData();
</script>

</body>
</html>

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

    <label>00082924 - NATHALY ALEJANDRA MURILLO ANAYA:</label><br>
    <input id="nombre" type="text"><br><br>

    <label>1260 - LICENCIATURA EN CIENCIAS JURIDICAS:</label><br>
    <input id="carrera" type="text"><br><br>

    <div class="02/2025">
   
    </div>
</div>

<!-- ============================
    MATERIA 1
============================= -->
<div class="panel">
    <div class="section-title" onclick="toggleSection(1)">Evaluaciones de la asignatura - Sección 02</div>

    <div id="section1" class="section-body">

        <p><strong>Profesor:</strong> CA08721 ALDO ENRIQUE CADER CAMILOT</p>
        <p><strong>Materia:</strong> 040092 INTROD AL DERECHO PROCESAL - Sección 02</p>

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
                <tr><td>Primera Evaluación Parcial</td><td>20.0</td><td>09/09/20</td><td>6.0</td></tr>
                <tr><td>Laboratorio 1</td><td>15.0</td><td>07/10/20</td><td>4.3</td></tr>
                <tr><td>Segunda Evaluación Parcial</td><td>20.0</td><td>28/10/20</td><td>7.4</td></tr>
                <tr><td>Laboratorio 2</td><td>15.0</td><td>13/11/20</td><td>5.9</td></tr>
                <tr><td>Evaluación Final</td><td>30.0</td><td>01/12/20</td><td>7.0</td></tr>
            </tbody>
        </table>

        <button class="btn-clear" onclick="clearTable(1)">🗑 Limpiar</button>

        <div id="notaFinal1" class="nota-final-box">Nota final: 6.3</div>
    </div>
</div>

<!-- ============================
    MATERIA 2
============================= -->
<div class="panel">
    <div class="section-title" onclick="toggleSection(2)">Evaluaciones de la asignatura - Sección 01</div>

    <div id="section2" class="section-body">

        <p><strong>Profesor:</strong> CA07961 ABEL EDUARDO CANALES DURAN</p>
        <p><strong>Materia:</strong> 040239 BIENES Y REGISTRO - Sección 01</p>

        <table id="tabla2">
            <thead>
                <tr>
                    <th>Evaluación</th>
                    <th>Ponderación (%)</th>
                    <th>Fecha</th>
                    <th>Nota</th>
                </tr>
            </thead>

            <tbody id="tbody2" contenteditable="true" oninput="saveData(); recalculateFinal(2)">
                <tr><td>Primera Evaluación Parcial</td><td>20.0</td><td>17/09/20</td><td>6.5</td></tr>
                <tr><td>Control de Lectura</td><td>15.0</td><td>08/10/20</td><td>6.0</td></tr>
                <tr><td>Segunda Evaluación Parcial</td><td>20.0</td><td>22/10/20</td><td>7.2</td></tr>
                <tr><td>Resolución de casos</td><td>15.0</td><td>05/11/20</td><td>5.8</td></tr>
                <tr><td>Evaluación Final</td><td>30.0</td><td>26/11/20</td><td>7.7</td></tr>
            </tbody>
        </table>

        <button class="btn-clear" onclick="clearTable(2)">🗑 Limpiar</button>

        <div id="notaFinal2" class="nota-final-box">Nota final: 6.7</div>
    </div>
</div>

<!-- ============================
    MATERIA 3
============================= -->
<div class="panel">
    <div class="section-title" onclick="toggleSection(3)">Evaluaciones de la asignatura - Sección 01</div>

    <div id="section3" class="section-body">

        <p><strong>Profesor:</strong> VE11881 MARYORY ANDREA VELADO CANO</p>
        <p><strong>Materia:</strong> 260028 ECOLOGIA GENERAL - Sección 01</p>

        <table id="tabla3">
            <thead>
                <tr>
                    <th>Evaluación</th>
                    <th>Ponderación (%)</th>
                    <th>Fecha</th>
                    <th>Nota</th>
                </tr>
            </thead>

            <tbody id="tbody3" contenteditable="true" oninput="saveData(); recalculateFinal(3)">
                <tr><td>Primera Evaluación Parcial</td><td>15.0</td><td>09/09/20</td><td>6.5</td></tr>
                <tr><td>Práctica de laboratorio</td><td>10.0</td><td>11/09/20</td><td>8.0</td></tr>
                <tr><td>Práctica de campo</td><td>10.0</td><td>09/10/20</td><td>7.1</td></tr>
                <tr><td>Segunda Evaluación Parcial</td><td>25.0</td><td>28/10/20</td><td>5.8</td></tr>
                <tr><td>Exposición de temas de investigación</td><td>20.0</td><td>11/11/20</td><td>9.0</td></tr>
                <tr><td>Evaluación Final</td><td>20.0</td><td>27/11/20</td><td>5.0</td></tr>
            </tbody>
        </table>

        <button class="btn-clear" onclick="clearTable(3)">🗑 Limpiar</button>

        <div id="notaFinal3" class="nota-final-box">Nota final: 6.7</div>
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
    localStorage.setItem("tabla2", document.getElementById("tbody2").innerHTML);
    localStorage.setItem("tabla3", document.getElementById("tbody3").innerHTML);
}

// Recuperar datos
function loadData() {
    if (localStorage.getItem("nombre"))
        document.getElementById("nombre").value = localStorage.getItem("nombre");

    if (localStorage.getItem("carrera"))
        document.getElementById("carrera").value = localStorage.getItem("carrera");

    if (localStorage.getItem("tabla1"))
        document.getElementById("tbody1").innerHTML = localStorage.getItem("tabla1");

    if (localStorage.getItem("tabla2"))
        document.getElementById("tbody2").innerHTML = localStorage.getItem("tabla2");

    if (localStorage.getItem("tabla3"))
        document.getElementById("tbody3").innerHTML = localStorage.getItem("tabla3");

    recalculateFinal(1);
    recalculateFinal(2);
    recalculateFinal(3);
}

loadData();
</script>

</body>
</html>

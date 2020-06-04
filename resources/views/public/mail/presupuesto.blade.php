<!DOCTYPE html>
<html>
<head>
    <title>Send Email</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
        .title {
            white-space: nowrap;
            width: 30px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h3>Mensaje de Solicitud De Presupuesto</h3>
    <h4>Datos Personales:</h4>
    <table>
        <tbody>
            <tr>
                <td class="title">Nombre:</td>
                <td>{{ @$data['nombre'] }}</td>
            </tr>
            <tr>
                <td class="title">Email:</td>
                <td>{{ @$data['email'] }}</td>
            </tr>
            <tr>
                <td class="title">Telefono:</td>
                <td>{{ @$data['telefono'] }}</td>
            </tr>
            <tr>
                <td class="title">Empresa:</td>
                <td>{{ @$data['empresa'] }}</td>
            </tr>
            <tr>
                <td colspan="2"><strong>Mensaje</strong>:</td>
            </tr>
            <tr>
                <td colspan="2"><pre>{{ @$data['mensaje'] }}</pre></td>
            </tr>
        </tbody>
    </table>
    <table>
        <thead>
            <tr>
                <th style="text-align:center">
                    Productos
                </th>
            </tr>
            <tr>
                <th>
                    Nombre
                </th>
                <th>
                    Categoría
                </th>
                <th>
                    Cantidad
                </th>
            </tr>
        </thead>
            <tbody>
                @if(!is_null($data['productos']))
                    @foreach($data['productos'] as $producto)
                        <tr>
                            <td>{{ @$producto['nombre']['es'] }}</td>
                            <td>{{ @$producto['categoria']['es']  }}</td>
                            <td>{{ @$producto['cant_producto'] }}</td>
                        </tr>
                    @endforeach
                @else
                    <tr>
                        <td> No hay productos agregados</td>
                    </tr>
                @endif
            </tbody>
        </table>
</body>
</html>
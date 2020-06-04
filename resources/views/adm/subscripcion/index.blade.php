
@extends('adm.layouts.app')
@section('content')
<div class="col-md-9">
    <div class="row">
        <div class="contenido">
            <div class="col s12">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb" style="background:none;">
                        <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('adm_index') }}">Inicio</a></li>
                        <li class="breadcrumb-item"><a class="breadcrump-element" href="{{ route('suscripcion') }}">Email Suscriptos</a></li>
                    </ol>
                </nav>
                <h5>Email Suscriptos</h5>
                <table class="table">
                    <tbody>
                    @forelse($emails as $email)
                        <tr>
                            <td>{!! $email->email !!}</td>
                        </tr>
                    @empty
                        <tr>
                            <td >No existen registros</td>
                        </tr>
                    @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

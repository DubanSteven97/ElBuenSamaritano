<div class="modal fade modalPermisos show" tabindex="-1" role="dialog" style="padding-right: 17px; display: block;"
    aria-modal="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">

            <div class="modal-header headerRegister">
                <h5 class="modal-title">Permisos roles de usuario</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>

            <div class="modal-body">
                <div class="col-md-12">
                    <div class="tile">

                        <form id="formPermisos" action="" name="formPermisos">
                            <input type="hidden" name="idrol" id="idrol" value="1" required="">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Módulo</th>
                                            <th>Ver</th>
                                            <th>Crear</th>
                                            <th>Actualizar</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                        <tr>
                                            <td>
                                                1 <input type="hidden" name="modulos[0][idmodulo]" value="1"
                                                    required="">
                                            </td>
                                            <td>
                                                Dashboard </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[0][r]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[0][w]"><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[0][u]"><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[0][d]"><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td>
                                                2 <input type="hidden" name="modulos[1][idmodulo]" value="2"
                                                    required="">
                                            </td>
                                            <td>
                                                Usuarios </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[1][r]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[1][w]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[1][u]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[1][d]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td>
                                                3 <input type="hidden" name="modulos[2][idmodulo]" value="3"
                                                    required="">
                                            </td>
                                            <td>
                                                Clientes </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[2][r]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[2][w]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[2][u]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[2][d]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td>
                                                4 <input type="hidden" name="modulos[3][idmodulo]" value="4"
                                                    required="">
                                            </td>
                                            <td>
                                                Productos </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[3][r]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[3][w]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[3][u]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[3][d]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td>
                                                5 <input type="hidden" name="modulos[4][idmodulo]" value="5"
                                                    required="">
                                            </td>
                                            <td>
                                                Pedidos </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[4][r]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[4][w]"><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[4][u]"><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[4][d]"><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td>
                                                6 <input type="hidden" name="modulos[5][idmodulo]" value="6"
                                                    required="">
                                            </td>
                                            <td>
                                                Categorias </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[5][r]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[5][w]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[5][u]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[5][d]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td>
                                                7 <input type="hidden" name="modulos[6][idmodulo]" value="7"
                                                    required="">
                                            </td>
                                            <td>
                                                Roles </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[6][r]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[6][w]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[6][u]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="toggle-flip">
                                                    <label>
                                                        <input type="checkbox" name="modulos[6][d]" checked=""><span
                                                            class="flip-indecator" data-toggle-on="ON"
                                                            data-toggle-off="OFF"></span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div class="text-center">
                                <button class="btn btn-success" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"
                                        aria-hidden="true"></i>Guardar</button>
                                <button class="btn btn-danger" type="button" data-dismiss="modal"><i
                                        class="app-menu__icon fas fa-sign-out-alt" aria-hidden="true"></i>Salir</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
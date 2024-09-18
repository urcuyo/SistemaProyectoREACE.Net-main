<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmInventarioMateriaprima.aspx.cs" Inherits="SistemaVentas.frmInventarioMateriaprima" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
            <div class="col-sm-12">
               <div class="card">
                  <div class="card-header">
                    Mantenedor Inventario Materia Prima
                  </div>
                  <div class="card-body">
                        <div class="row">
                            <div class="col-sm-2">
                                <button id="btnNuevoInventario" type="button" class="btn btn-sm btn-success">Nuevo</button>
                            </div>
                        </div>
                      <hr />
                        <div class="row mt-3">
                            <div class="col-sm-12">
                                <table id="tbInventario" class="table table-striped table-bordered nowrap compact" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Código</th>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                            <th>Categoría</th>
                                            <th>Estado</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                  </div>
                  <div class="card-footer">
                  </div>
                </div>
            </div>
    </div>
</asp:Content>

<!-- Modal -->
<div class="modal fade" id="modalrol" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Inventario Materia Prima</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <input id="txtIdInventario" class="model" name="IdInventario" value="0" type="hidden" />
          <div class="form-group row">
            <label for="txtCodigo" class="col-sm-2 col-form-label col-form-label-sm">Código</label>
            <div class="col-sm-10">
              <input type="text" class="form-control form-control-sm model" id="txtCodigo" name="Codigo">
            </div>
          </div>
          <div class="form-group row">
            <label for="txtNombre" class="col-sm-2 col-form-label col-form-label-sm">Nombre</label>
            <div class="col-sm-10">
              <input type="text" class="form-control form-control-sm model" id="txtNombre" name="Nombre">
            </div>
          </div>
          <div class="form-group row">
            <label for="txtDescripcion" class="col-sm-2 col-form-label col-form-label-sm">Descripción</label>
            <div class="col-sm-10">
              <input type="text" class="form-control form-control-sm model" id="txtDescripcion" name="Descripcion">
            </div>
          </div>
          <div class="form-group row">
            <label for="cboCategoria" class="col-sm-2 col-form-label col-form-label-sm">Categoría</label>
            <div class="col-sm-10">
              <select class="form-control form-control-sm model" id="cboCategoria" name="Categoria">
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label for="cboEstado" class="col-sm-2 col-form-label col-form-label-sm">Activo</label>
            <div class="col-sm-10">
              <select class="form-control form-control-sm model" id="cboEstado" name="Activo">
                <option value="1">Activo</option>
                <option value="0">No Activo</option>
              </select>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Cerrar</button>
        <button id="btnGuardarCambios" type="button" class="btn btn-sm btn-primary">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>
<script src="Controlador/frmInventarioMateriaprima/frmInventarioMateriaprima.js"></script>

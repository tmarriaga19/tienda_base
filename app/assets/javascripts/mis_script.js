function traerUsuarios(){

    $.ajax({
     type:"POST",
     dataType:"json",
     url:"/users/traer",
     data:{'id':$('#identidadId').val()},
     success: function(resp){
         var combo=$('#user_identidad');
         combo.empty();
         for(i=0;i<resp.length;i++){
             combo.append('<option value="'+resp[i]['id']+'" >'+resp[i]['nombre']+' </option>' );
          }
     },
     error: function(){
        alert("falla consultando clientes/empleados");
     }
   });
 }

 function registrarse(){
    if (!validarRegistro()){
        return;
    }else{
        $.ajax({
            type:"POST",
            dataType:"json",
            url:"/clientes/guardar",
            data:{
                'nombres':nombres,
                'apellidos':apellidos,
                'idtipoidentificacion':tipoidentificacion,
                'identificacion':noidentificacion,
                'razonSocial':razonsocial,
                'correo':email,
                'direccion':direccion,
                'telefonos':telefono,
                'idtipocliente':tipocliente,
                'idcategoriacliente':categoriacliente,
                'idgenero':genero
            },
            success: function(resp){
                alert(resp);
            },
            error: function(){
               alert("falla en el formulario, lo siento fue nuestra culpa");
            }
          }); 
    }
 }

 function validarRegistro(){
    var nombres = document.getElementById("nombres").value;
    var apellidos = document.getElementById("apellidos").value;
    var tipoidentificacionT = document.getElementById("tipoidentificacion");
    var tipoidentificacion = tipoidentificacionT.options[tipoidentificacionT.selectedIndex].value;
    var noidentificacion = document.getElementById("noidentificacion").value;
    var razonsocial = document.getElementById("razonsocial").value;
    var email = document.getElementById("email").value;
    var emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
    var direccion = document.getElementById("direccion").value;
    var telefono = document.getElementById("telefono").value;
    var tipoclienteT = document.getElementById("tipocliente");
    var tipocliente = tipoclienteT.options[tipoclienteT.selectedIndex].value;    
    var categoriaclienteT = document.getElementById("categoriacliente");
    var categoriacliente = categoriaclienteT.options[categoriaclienteT.selectedIndex].value;
    var generoT = document.getElementById("genero");
    var genero = generoT.options[generoT.selectedIndex].value;

    if (nombres == "" || nombres ==  null){
        alert("El nombre es requerido");
        return false;
    }

    if (apellidos == "" || apellidos ==  null){
        alert("El apellidos es requerido");
        return false;
    }

    if (tipoidentificacion == "0" || tipoidentificacion ==  null){
        alert("El Tipo de Identificación es requerido");
        return false;
    }

    if (noidentificacion == "" || noidentificacion ==  null){
        alert("El Número de Identificación es requerido");
        return false;
    }

    if (razonsocial == "" || razonsocial ==  null){
        alert("La Razón Social es requerida");
        return false;
    }

    if (email == "" || email ==  null){
        alert("El Correo Electronico es requerido");
        return false;
    }

    if (!emailRegex.test(email)){
        alert("El correo Electronico no esta correctamente escrito");
        return false;
    }

    if (direccion == "" || direccion ==  null){
        alert("La Dirección es requerida");
        return false;
    }

    if (telefono == "" || telefono ==  null){
        alert("El Teléfono es requerido");
        return false;
    }

    if (tipocliente == "0" || tipocliente ==  null){
        alert("El Tipo de Cliente es requerido");
        return false;
    }

    if (genero == "0" || genero ==  null){
        alert("El Genero es requerido");
        return false;
    }
    return true;
 }

 $(document).ready(function() {
    $.ajax({
        type:"POST",
        dataType:"json",
        url:"/valorparametros/traerValorParametro",
        data:{'id':'4'},
        success: function(resp){
            var combo=$('#tipoidentificacion');
            for(i=0;i<resp.length;i++){
                combo.append('<option value="'+resp[i]['id']+'" >'+resp[i]['valor']+' </option>');
             }
        },
        error: function(){
           alert("falla consultando clientes/empleados");
        }
      });
      $.ajax({
        type:"POST",
        dataType:"json",
        url:"/valorparametros/traerValorParametro",
        data:{'id':'5'},
        success: function(resp){
            var combo=$('#tipocliente');
            for(i=0;i<resp.length;i++){
                combo.append('<option value="'+resp[i]['id']+'" >'+resp[i]['valor']+' </option>');
             }
        },
        error: function(){
           alert("falla consultando clientes/empleados");
        }
      });
      $.ajax({
        type:"POST",
        dataType:"json",
        url:"/valorparametros/traerValorParametro",
        data:{'id':'12'},
        success: function(resp){
            var combo=$('#categoriacliente');
            for(i=0;i<resp.length;i++){
                // Profesor acá está lo que usted dijo que daría un punto extra sobre como colocar
                // que un valor de un combobox se set al momento de abrirlo, en este caso decidimos que
                // la categoría del cliente por su registro iba a ser de tipo bronce y que con el tiempo subiría de
                // categoría
                if (resp[i]['id'] == 37){
                    combo.append('<option value="'+resp[i]['id']+'" selected >'+resp[i]['valor']+' </option>');
                }else{
                    combo.append('<option value="'+resp[i]['id']+'" >'+resp[i]['valor']+' </option>');   
                }
             }
        },
        error: function(){
           alert("falla consultando clientes/empleados");
        }
      });
      $.ajax({
        type:"POST",
        dataType:"json",
        url:"/valorparametros/traerValorParametro",
        data:{'id':'11'},
        success: function(resp){
            var combo=$('#genero');
            for(i=0;i<resp.length;i++){
                combo.append('<option value="'+resp[i]['id']+'" >'+resp[i]['valor']+' </option>');
             }
        },
        error: function(){
           alert("falla consultando clientes/empleados");
        }
      });
 });
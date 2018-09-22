﻿using CapaDatos;
using CapaEntidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocios
{
    public class ProveedorNE
    {
        private ProveedorDAO proveedorDAO;
        
        public ProveedorNE()
        {
            proveedorDAO = new ProveedorDAO();
        }


        public DataTable ListarProveedores()
        {
            return proveedorDAO.ListarProveedores();
        }

        public int RegistrarProveedor(Proveedor proveedor)
        {
            return proveedorDAO.RegistrarProveedor(proveedor);
        }

    }
}

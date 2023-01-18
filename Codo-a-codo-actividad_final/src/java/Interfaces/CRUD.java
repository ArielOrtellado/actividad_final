
package Interfaces;

import Modelo.Producto;
import java.util.List;


public interface CRUD {
    public List listar();
    public Producto list(int id);
    public boolean add(Producto producto);
    public boolean edit(Producto producto);
    public boolean eliminar(int id);    
}

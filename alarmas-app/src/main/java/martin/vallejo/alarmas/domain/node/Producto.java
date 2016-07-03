package martin.vallejo.alarmas.domain.node;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.Set;


@NodeEntity(label="Producto")
public class Producto {

    @GraphId
    private Long _id;

    @Property(name="id")
    private Long id;

    @Property(name="nombre")
    private String nombre;

    @Relationship(type = "ASOCIADA_A", direction = Relationship.INCOMING)
    private Set<Poliza> polizas;

    public Producto() {
    }

    public Long get_id() {
        return _id;
    }

    public void set_id(Long _id) {
        this._id = _id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Set<Poliza> getPolizas() {
        return polizas;
    }

    public void setPolizas(Set<Poliza> polizas) {
        this.polizas = polizas;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Producto{");
        sb.append("_id=").append(_id);
        sb.append(", id=").append(id);
        sb.append(", nombre='").append(nombre).append('\'');
        sb.append('}');
        return sb.toString();
    }
}

package martin.vallejo.alarmas.domain.node;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.Set;


@NodeEntity(label = "Poliza")
public class Poliza {

    @GraphId
    private Long _id;

    @Property(name = "id")
    private Long id;

    @Property(name = "prima")
    private Double prima;

    @Relationship(type = "ASOCIADA_A")
    private Set<Producto> productos;

    @Relationship(type = "GENERA")
    private Set<Recibo> recibos;

    // solo nos enfocamos en el cliente contratante
    @Relationship(type="CONTRATA", direction = Relationship.INCOMING)
    private Cliente cliente;

    public Poliza() {
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

    public Double getPrima() {
        return prima;
    }

    public void setPrima(Double prima) {
        this.prima = prima;
    }

    public Set<Producto> getProductos() {
        return productos;
    }

    public void setProductos(Set<Producto> productos) {
        this.productos = productos;
    }

    public Set<Recibo> getRecibos() {
        return recibos;
    }

    public void setRecibos(Set<Recibo> recibos) {
        this.recibos = recibos;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Poliza{");
        sb.append("_id=").append(_id);
        sb.append(", id=").append(id);
        sb.append(", prima=").append(prima);
        sb.append('}');
        return sb.toString();
    }
}

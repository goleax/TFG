package martin.vallejo.alarmas.domain.relationship;

import martin.vallejo.alarmas.domain.node.Cliente;
import martin.vallejo.alarmas.domain.node.Prestacion;
import org.neo4j.ogm.annotation.*;
import org.neo4j.ogm.annotation.typeconversion.DateLong;

import java.util.Date;

@RelationshipEntity(type="RECIBE")
public class Recibe {

    @GraphId
    private Long _id;

    @Property
    @DateLong
    private Date inicio;

    @StartNode
    private Cliente cliente;

    @EndNode
    private Prestacion prestacion;

    public Recibe() {
    }

    public Long get_id() {
        return _id;
    }

    public void set_id(Long _id) {
        this._id = _id;
    }

    public Date getInicio() {
        return inicio;
    }

    public void setInicio(Date inicio) {
        this.inicio = inicio;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Prestacion getPrestacion() {
        return prestacion;
    }

    public void setPrestacion(Prestacion prestacion) {
        this.prestacion = prestacion;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Recibe{");
        sb.append("_id=").append(_id);
        sb.append(", inicio=").append(inicio);
        sb.append(", cliente=").append(cliente);
        sb.append(", prestacion=").append(prestacion);
        sb.append('}');
        return sb.toString();
    }
}

package martin.vallejo.alarmas.domain.relationship;

import martin.vallejo.alarmas.domain.node.Acto;
import martin.vallejo.alarmas.domain.node.Cliente;
import org.neo4j.ogm.annotation.*;
import org.neo4j.ogm.annotation.typeconversion.DateLong;

import java.util.Date;

@RelationshipEntity(type="TIENE_PREEXISTENCIA")
public class TienePreexistencia {

    @GraphId
    private Long _id;

    @Property
    @DateLong
    private Date inicio;

    @StartNode
    private Cliente cliente;

    @EndNode
    private Acto acto;

    public TienePreexistencia() {
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

    public Acto getActo() {
        return acto;
    }

    public void setActo(Acto acto) {
        this.acto = acto;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("TienePreexistencia{");
        sb.append("_id=").append(_id);
        sb.append(", inicio=").append(inicio);
        sb.append(", cliente=").append(cliente);
        sb.append(", acto=").append(acto);
        sb.append('}');
        return sb.toString();
    }
}

package martin.vallejo.alarmas.domain.relationship;

import martin.vallejo.alarmas.domain.node.Cliente;
import martin.vallejo.alarmas.domain.node.Poliza;
import martin.vallejo.alarmas.domain.node.Recibo;
import org.neo4j.ogm.annotation.*;
import org.neo4j.ogm.annotation.typeconversion.DateLong;

import java.util.Date;

@RelationshipEntity(type="CONTRATA")
public class Contrata {

    @GraphId
    private Long _id;

    @Property
    @DateLong
    private Date inicio;

    @Property
    @DateLong
    private Date fin;

    @Property
    private Integer prima;

    @StartNode
    private Cliente cliente;

    @EndNode
    private Poliza poliza;

    public Contrata() {
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

    public Date getFin() {
        return fin;
    }

    public void setFin(Date fin) {
        this.fin = fin;
    }

    public Integer getPrima() {
        return prima;
    }

    public void setPrima(Integer prima) {
        this.prima = prima;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Poliza getPoliza() {
        return poliza;
    }

    public void setPoliza(Poliza poliza) {
        this.poliza = poliza;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Contrata{");
        sb.append("_id=").append(_id);
        sb.append(", inicio=").append(inicio);
        sb.append(", fin=").append(fin);
        sb.append(", prima=").append(prima);
        sb.append(", cliente=").append(cliente);
        sb.append(", poliza=").append(poliza);
        sb.append('}');
        return sb.toString();
    }
}

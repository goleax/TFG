package martin.vallejo.alarmas.domain.relationship;

import martin.vallejo.alarmas.domain.node.Poliza;
import martin.vallejo.alarmas.domain.node.Recibo;
import org.neo4j.ogm.annotation.*;
import org.neo4j.ogm.annotation.typeconversion.DateLong;

import java.util.Date;

@RelationshipEntity(type="GENERA")
public class Genera {

    @GraphId
    private Long _id;

    @Property
    @DateLong
    private Date inicio;

    @StartNode
    private Poliza poliza;

    @EndNode
    private Recibo recibo;

    public Genera() {
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

    public Poliza getPoliza() {
        return poliza;
    }

    public void setPoliza(Poliza poliza) {
        this.poliza = poliza;
    }

    public Recibo getRecibo() {
        return recibo;
    }

    public void setRecibo(Recibo recibo) {
        this.recibo = recibo;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Genera{");
        sb.append("_id=").append(_id);
        sb.append(", inicio=").append(inicio);
        sb.append(", poliza=").append(poliza);
        sb.append(", recibo=").append(recibo);
        sb.append('}');
        return sb.toString();
    }
}

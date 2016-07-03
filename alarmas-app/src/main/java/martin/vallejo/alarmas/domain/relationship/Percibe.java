package martin.vallejo.alarmas.domain.relationship;

import martin.vallejo.alarmas.domain.node.Cliente;
import martin.vallejo.alarmas.domain.node.Liquidacion;
import martin.vallejo.alarmas.domain.node.Medico;
import martin.vallejo.alarmas.domain.node.Prestacion;
import org.neo4j.ogm.annotation.*;
import org.neo4j.ogm.annotation.typeconversion.DateLong;

import java.util.Date;

@RelationshipEntity(type="PERCIBE")
public class Percibe {

    @GraphId
    private Long _id;

    @Property
    @DateLong
    private Date inicio;

    @StartNode
    private Medico medico;

    @EndNode
    private Liquidacion liquidacion;

    public Percibe() {
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

    public Medico getMedico() {
        return medico;
    }

    public void setMedico(Medico medico) {
        this.medico = medico;
    }

    public Liquidacion getLiquidacion() {
        return liquidacion;
    }

    public void setLiquidacion(Liquidacion liquidacion) {
        this.liquidacion = liquidacion;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Percibe{");
        sb.append("_id=").append(_id);
        sb.append(", inicio=").append(inicio);
        sb.append(", medico=").append(medico);
        sb.append(", liquidacion=").append(liquidacion);
        sb.append('}');
        return sb.toString();
    }
}

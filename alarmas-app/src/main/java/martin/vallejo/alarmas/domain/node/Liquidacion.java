package martin.vallejo.alarmas.domain.node;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

@NodeEntity(label="Liquidacion")
public class Liquidacion {

    @GraphId
    private Long _id;

    @Property(name="id")
    private Long id;

    @Property(name="importe")
    private Double importe;

    @Relationship(type = "PERCIBE", direction = Relationship.INCOMING)
    private Medico medico;

    @Relationship(type= "ASOCIADA_A")
    private Prestacion prestacion;

    public Liquidacion() {
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

    public Double getImporte() {
        return importe;
    }

    public void setImporte(Double importe) {
        this.importe = importe;
    }

    public Medico getMedico() {
        return medico;
    }

    public void setMedico(Medico medico) {
        this.medico = medico;
    }

    public Prestacion getPrestacion() {
        return prestacion;
    }

    public void setPrestacion(Prestacion prestacion) {
        this.prestacion = prestacion;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Liquidacion{");
        sb.append("_id=").append(_id);
        sb.append(", id=").append(id);
        sb.append(", importe=").append(importe);
        sb.append('}');
        return sb.toString();
    }
}

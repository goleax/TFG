package martin.vallejo.alarmas.domain.node;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.Set;

@NodeEntity(label = "Recibo")
public class Recibo {

    @GraphId
    private Long _id;

    @Property(name = "id")
    private Long id;

    @Property(name = "importe")
    private Double importe;

    @Relationship(type = "GENERA", direction = Relationship.INCOMING)
    private Poliza poliza;

    @Relationship(type = "INCLUYE")
    private Set<Prestacion> prestaciones;

    public Recibo() {
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

    public Poliza getPoliza() {
        return poliza;
    }

    public void setPoliza(Poliza poliza) {
        this.poliza = poliza;
    }

    public Set<Prestacion> getPrestaciones() {
        return prestaciones;
    }

    public void setPrestaciones(Set<Prestacion> prestaciones) {
        this.prestaciones = prestaciones;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Recibo{");
        sb.append("_id=").append(_id);
        sb.append(", id=").append(id);
        sb.append(", importe='").append(importe).append('\'');
        sb.append('}');
        return sb.toString();
    }
}

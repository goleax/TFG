package martin.vallejo.alarmas.domain.node;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.Set;

@NodeEntity(label="Medico")
public class Medico {

    @GraphId
    private Long _id;

    @Property(name="id")
    private Long id;

    @Property(name="nombre")
    private String nombre;

    @Relationship(type = "REALIZA")
    private Set<Prestacion> realiza;

    @Relationship(type = "PRESCRIBE")
    private Set<Prestacion> prescribe;

    @Relationship(type = "REALIZA")
    private Set<Acto> actos;

    @Relationship(type = "PRECIBE")
    private Set<Liquidacion> liquidaciones;

    public Medico() {
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

    public Set<Prestacion> getRealiza() {
        return realiza;
    }

    public void setRealiza(Set<Prestacion> realiza) {
        this.realiza = realiza;
    }

    public Set<Prestacion> getPrescribe() {
        return prescribe;
    }

    public void setPrescribe(Set<Prestacion> prescribe) {
        this.prescribe = prescribe;
    }

    public Set<Acto> getActos() {
        return actos;
    }

    public void setActos(Set<Acto> actos) {
        this.actos = actos;
    }

    public Set<Liquidacion> getLiquidaciones() {
        return liquidaciones;
    }

    public void setLiquidaciones(Set<Liquidacion> liquidaciones) {
        this.liquidaciones = liquidaciones;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Medico{");
        sb.append("_id=").append(_id);
        sb.append(", id=").append(id);
        sb.append(", nombre='").append(nombre).append('\'');
        sb.append('}');
        return sb.toString();
    }
}

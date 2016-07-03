package martin.vallejo.alarmas.domain.node;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.Set;

@NodeEntity(label="Cliente")
public class Cliente {

    @GraphId
    private Long _id;

    @Property(name = "id")
    private Long id;

    @Property(name = "nombre")
    private String nombre;

    @Property(name = "edad")
    private Integer edad;

    @Relationship(type="CONTRATA")
    private Set<Poliza> contrata;

    @Relationship(type="RECIBE")
    private Set<Prestacion> recibe;

    @Relationship(type="TIENE_PREEXISTENCIA")
    private Set<Acto> actos;

    public Cliente() {
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

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public Set<Poliza> getContrata() {
        return contrata;
    }

    public void setContrata(Set<Poliza> contrata) {
        this.contrata = contrata;
    }

    public Set<Prestacion> getRecibe() {
        return recibe;
    }

    public void setRecibe(Set<Prestacion> recibe) {
        this.recibe = recibe;
    }

    public Set<Acto> getActos() {
        return actos;
    }

    public void setActos(Set<Acto> actos) {
        this.actos = actos;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Cliente{");
        sb.append("_id=").append(_id);
        sb.append(", id=").append(id);
        sb.append(", nombre='").append(nombre).append('\'');
        sb.append(", edad=").append(edad);
        sb.append('}');
        return sb.toString();
    }
}

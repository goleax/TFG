package martin.vallejo.alarmas.domain.node;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.Set;

@NodeEntity(label="Acto")
public class Acto {

    @GraphId
    private Long _id;

    @Property(name="id")
    private Long id;

    @Property(name="especialidad")
    private Long especialidad;

    @Property(name="nombre")
    private String nombre;

    @Relationship(type = "REALIZA", direction = Relationship.INCOMING)
    private Set<Medico> medicos;

    @Relationship(type = "ASOCIADO_A", direction = Relationship.INCOMING)
    private Set<Prestacion> prestaciones;

    @Relationship(type = "TIENE_PREEXISTENCIA", direction = Relationship.INCOMING)
    private Set<Cliente> clientes;

    public Acto() {
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

    public Long getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(Long especialidad) {
        this.especialidad = especialidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Set<Medico> getMedicos() {
        return medicos;
    }

    public void setMedicos(Set<Medico> medicos) {
        this.medicos = medicos;
    }

    public Set<Prestacion> getPrestaciones() {
        return prestaciones;
    }

    public void setPrestaciones(Set<Prestacion> prestaciones) {
        this.prestaciones = prestaciones;
    }

    public Set<Cliente> getClientes() {
        return clientes;
    }

    public void setClientes(Set<Cliente> clientes) {
        this.clientes = clientes;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Acto{");
        sb.append("_id=").append(_id);
        sb.append(", id=").append(id);
        sb.append(", especialidad=").append(especialidad);
        sb.append(", nombre='").append(nombre).append('\'');
        sb.append('}');
        return sb.toString();
    }
}

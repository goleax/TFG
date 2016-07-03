package martin.vallejo.alarmas.domain.node;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.Set;

@NodeEntity(label = "Pretacion")
public class Prestacion {

    @GraphId
    private Long _id;

    @Property(name = "id")
    private Long id;

    @Property(name = "nombre")
    private String nombre;

    @Property(name = "importe_cliente")
    private Double importeCliente;

    @Property(name = "importe_proveedor")
    private Double importeProveedor;

    @Property(name = "importe_estimado")
    private Double importeEstimado;

    @Relationship(type = "INCLUYE", direction = Relationship.INCOMING)
    private Recibo recibo;

    @Relationship(type = "RECIBE", direction = Relationship.INCOMING)
    private Cliente cliente;

    @Relationship(type = "ASOCIADO_A")
    private Acto acto;

    @Relationship(type = "ASOCIADO_A", direction = Relationship.INCOMING)
    private Liquidacion liquidacion;

    @Relationship(type = "PRESCRIBE", direction = Relationship.INCOMING)
    private Medico prescritaPor;

    @Relationship(type = "REALIZA", direction = Relationship.INCOMING)
    private Medico realizadaPor;

    public Prestacion() {
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

    public Double getImporteCliente() {
        return importeCliente;
    }

    public void setImporteCliente(Double importeCliente) {
        this.importeCliente = importeCliente;
    }

    public Double getImporteProveedor() {
        return importeProveedor;
    }

    public void setImporteProveedor(Double importeProveedor) {
        this.importeProveedor = importeProveedor;
    }

    public Double getImporteEstimado() {
        return importeEstimado;
    }

    public void setImporteEstimado(Double importeEstimado) {
        this.importeEstimado = importeEstimado;
    }

    public Recibo getRecibo() {
        return recibo;
    }

    public void setRecibo(Recibo recibo) {
        this.recibo = recibo;
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

    public Liquidacion getLiquidacion() {
        return liquidacion;
    }

    public void setLiquidacion(Liquidacion liquidacion) {
        this.liquidacion = liquidacion;
    }

    public Medico getPrescritaPor() {
        return prescritaPor;
    }

    public void setPrescritaPor(Medico prescritaPor) {
        this.prescritaPor = prescritaPor;
    }

    public Medico getRealizadaPor() {
        return realizadaPor;
    }

    public void setRealizadaPor(Medico realizadaPor) {
        this.realizadaPor = realizadaPor;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Prestacion{");
        sb.append("_id=").append(_id);
        sb.append(", id=").append(id);
        sb.append(", nombre='").append(nombre).append('\'');
        sb.append(", importeCliente=").append(importeCliente);
        sb.append(", importeProveedor=").append(importeProveedor);
        sb.append(", importeEstimado=").append(importeEstimado);
        sb.append('}');
        return sb.toString();
    }
}

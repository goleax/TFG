package martin.vallejo.alarmas.domain.results;

import martin.vallejo.alarmas.domain.node.Medico;
import martin.vallejo.alarmas.domain.node.Prestacion;
import martin.vallejo.alarmas.domain.relationship.Prescribe;
import martin.vallejo.alarmas.domain.relationship.Realiza;
import org.springframework.data.neo4j.annotation.QueryResult;

@QueryResult
public class FacturaEngordada {

    private Medico medico;
    private Prestacion prestacion;
    private Prescribe prescribe;
    private Realiza realiza;

    public FacturaEngordada() {
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

    public Prescribe getPrescribe() {
        return prescribe;
    }

    public void setPrescribe(Prescribe prescribe) {
        this.prescribe = prescribe;
    }

    public Realiza getRealiza() {
        return realiza;
    }

    public void setRealiza(Realiza realiza) {
        this.realiza = realiza;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("FacturaEngordada{");
        sb.append("medico=").append(medico);
        sb.append(", prestacion=").append(prestacion);
        sb.append(", prescribe=").append(prescribe);
        sb.append(", realiza=").append(realiza);
        sb.append('}');
        return sb.toString();
    }
}

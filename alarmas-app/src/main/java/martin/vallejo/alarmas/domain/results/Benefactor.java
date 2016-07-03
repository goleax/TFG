package martin.vallejo.alarmas.domain.results;

import martin.vallejo.alarmas.domain.node.Medico;
import org.springframework.data.neo4j.annotation.QueryResult;

@QueryResult
public class Benefactor {
    private Medico prescribe;
    private Medico realiza;
    private Integer total;
    private Double importe;

    public Benefactor() {
    }

    public Medico getPrescribe() {
        return prescribe;
    }

    public void setPrescribe(Medico prescribe) {
        this.prescribe = prescribe;
    }

    public Medico getRealiza() {
        return realiza;
    }

    public void setRealiza(Medico realiza) {
        this.realiza = realiza;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Double getImporte() {
        return importe;
    }

    public void setImporte(Double importe) {
        this.importe = importe;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Benefactor{");
        sb.append("prescribe=").append(prescribe);
        sb.append(", realiza=").append(realiza);
        sb.append(", total=").append(total);
        sb.append(", importe=").append(importe);
        sb.append('}');
        return sb.toString();
    }
}
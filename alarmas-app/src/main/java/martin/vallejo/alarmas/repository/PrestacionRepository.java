package martin.vallejo.alarmas.repository;

import martin.vallejo.alarmas.domain.node.Acto;
import martin.vallejo.alarmas.domain.results.FacturaEngordada;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PrestacionRepository extends GraphRepository<Acto> {


    @Query("OPTIONAL MATCH (medico:Medico)-[realiza:REALIZA]->(prestacion:Prestacion) " +
            "OPTIONAL MATCH (medico:Medico)-[prescribe:PREESCRIBE]->(prestacion:Prestacion) " +
            "WHERE prestacion.importe_proveedor >= prestacion.importe_estimado " +
            "RETURN medico, prestacion, prescribe, realiza")
    Iterable<FacturaEngordada> getFacturasEngordadas();
}
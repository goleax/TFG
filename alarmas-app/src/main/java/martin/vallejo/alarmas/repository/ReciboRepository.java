package martin.vallejo.alarmas.repository;

import martin.vallejo.alarmas.domain.node.Acto;
import martin.vallejo.alarmas.domain.node.Recibo;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReciboRepository extends GraphRepository<Acto> {

    @Query("MATCH (pe:Prestacion)--(re:Recibo)--(po:Poliza) " +
            " WITH  " +
            "	re, " +
            "	SUM(pe.importe_proveedor) AS importe_solicitado, " +
            "	re.importe/12 AS importe_esperado " +
            "WHERE importe_solicitado > importe_esperado " +
            "RETURN re" )
    Iterable<Recibo> getRecibosAlterados();

}
package martin.vallejo.alarmas.repository;

import martin.vallejo.alarmas.domain.node.Acto;
import martin.vallejo.alarmas.domain.results.Benefactor;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MedicoRepository extends GraphRepository<Acto> {

    @Query("MATCH (prescribe:Medico)-[:PRESCRIBE]->(pe:Prestacion)<-[:REALIZA]-(realiza:Medico) " +
            "WITH  " +
            "   prescribe, " +
            "	realiza, " +
            "   pe.importe_proveedor AS importe, " +
            "	count(pe) AS total " +
            "WHERE total > {total} AND importe >= {importe} " +
            "RETURN prescribe, realiza, importe, total")
    Iterable<Benefactor> getBenefactores(@Param("total") Integer total,@Param("importe") Double importe);
}
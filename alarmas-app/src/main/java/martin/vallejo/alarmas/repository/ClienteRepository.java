package martin.vallejo.alarmas.repository;

import martin.vallejo.alarmas.domain.node.Cliente;
import martin.vallejo.alarmas.domain.results.Benefactor;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ClienteRepository extends GraphRepository<Cliente> {

    @Query("MATCH (pr:Prestacion)<-[:RECIBE]-(cl:Cliente)-[:TIENE_PREEXISTENCIA]->(ac:Acto)<-[:ASOCIADO_A]-(pr) " +
            "WITH cl, COUNT(ac) AS total " +
            "WHERE total > {total} " +
            "RETURN cl")
    Iterable<Cliente> getClientePreexistencia(@Param("total") Integer total);
}
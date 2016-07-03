package martin.vallejo.alarmas.repository;

import martin.vallejo.alarmas.domain.node.Poliza;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PolizaRepository extends GraphRepository<Poliza> {

}
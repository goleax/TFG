package martin.vallejo.alarmas.repository;

import martin.vallejo.alarmas.domain.node.Liquidacion;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LiquidacionRepository extends GraphRepository<Liquidacion> {

}
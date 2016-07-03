package martin.vallejo.alarmas.repository;

import martin.vallejo.alarmas.domain.node.Producto;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductoRepository extends GraphRepository<Producto> {

}
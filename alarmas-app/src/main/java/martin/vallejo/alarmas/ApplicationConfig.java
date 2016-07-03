package martin.vallejo.alarmas;

import org.neo4j.ogm.config.Configuration;
import org.neo4j.ogm.session.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.data.neo4j.config.Neo4jConfiguration;
import org.springframework.data.neo4j.repository.config.EnableNeo4jRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@org.springframework.context.annotation.Configuration
@EnableNeo4jRepositories("martin.vallejo.alarmas.repository")
@EnableTransactionManagement
public class ApplicationConfig extends Neo4jConfiguration {
	private static final Logger logger = LoggerFactory.getLogger(ApplicationConfig.class);

	public static final String URL = System.getenv("NEO4J_URL") != null ? //
			System.getenv("NEO4J_URL")//
			: "http://localhost:7474";

	@Bean
	public Configuration getConfiguration() {
		// cargamos la configuracion de neo4j
		if (logger.isInfoEnabled()) {
			logger.info("Neo4j url: " + URL);
		}
		Configuration config = new Configuration();
		config.driverConfiguration()//
				.setDriverClassName("org.neo4j.ogm.drivers.http.driver.HttpDriver")//
				.setURI(URL);
		return config;
	}

	@Bean
    public SessionFactory getSessionFactory() {
        // agregamos los modelos a la factoria de sesion
        return new SessionFactory(getConfiguration(), "martin.vallejo.alarmas.domain");
    }

}
package martin.vallejo.alarmas.task;

import martin.vallejo.alarmas.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * Permite detectar la no existencia de desalineación entre elos recibos y las prestaciones
 */
@Component
public class ClientePreexistenciaScheduledTask implements AnalisisFraudeScheduleTask {

    @Autowired
    private ClienteRepository clienteRepository;

    @Override
    // http://www.manpagez.com/man/5/crontab/
    // una vez cada hora  "0 0 * * * *"
    @Scheduled(cron = "0 * * * * *")
    public void analizar() {
        System.out.println("####################################");
        System.out.println("# Informe de cliente preexistencia #");
        System.out.println("####################################");
        clienteRepository.getClientePreexistencia(1).forEach(cliente ->  System.out.println("Preexistencia " + clienteRepository + " - " + new Date()));
    }

}

package martin.vallejo.alarmas.task;

import martin.vallejo.alarmas.repository.PrestacionRepository;
import martin.vallejo.alarmas.repository.ReciboRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * Permite detectar la no existencia de desalineación entre elos recibos y las prestaciones
 */
@Component
public class EngordarFacturasScheduledTask implements AnalisisFraudeScheduleTask {

    @Autowired
    private PrestacionRepository prestacionRepository;

    @Override
    // http://www.manpagez.com/man/5/crontab/
    // una vez cada hora  "0 0 * * * *"
    @Scheduled(cron = "0 * * * * *")
    public void analizar() {
        System.out.println("################################");
        System.out.println("# Informe de factura engordada #");
        System.out.println("################################");
        prestacionRepository.getFacturasEngordadas().forEach(facturaEngordada -> System.out.println("Factura engordada " + facturaEngordada + " - " + new Date()));
    }

}

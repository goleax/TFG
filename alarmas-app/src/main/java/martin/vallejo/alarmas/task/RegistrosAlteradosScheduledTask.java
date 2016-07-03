package martin.vallejo.alarmas.task;

import martin.vallejo.alarmas.domain.node.Recibo;
import martin.vallejo.alarmas.repository.ReciboRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.function.Consumer;

/**
 * Permite detectar la no existencia de desalineación entre elos recibos y las prestaciones
 */
@Component
public class RegistrosAlteradosScheduledTask implements AnalisisFraudeScheduleTask {

    @Autowired
    private ReciboRepository reciboRepository;

    @Override
    // http://www.manpagez.com/man/5/crontab/
    // una vez cada hora  "0 0 * * * *"
    @Scheduled(cron = "0 * * * * *")
    public void analizar() {
        System.out.println("##################################");
        System.out.println("# Informe de registros alterados #");
        System.out.println("##################################");
        reciboRepository.getRecibosAlterados().forEach(recibo -> System.out.println("Alterados " + recibo + " - " + new Date()));
    }

}

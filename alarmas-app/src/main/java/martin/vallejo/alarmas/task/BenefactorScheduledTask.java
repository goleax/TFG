package martin.vallejo.alarmas.task;

import martin.vallejo.alarmas.domain.results.Benefactor;
import martin.vallejo.alarmas.repository.MedicoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.function.Consumer;

/**
 * Permite detectar la no existencia de Medicos que estan beneficiando a otros en base parametros
 */
@Component
public class BenefactorScheduledTask implements AnalisisFraudeScheduleTask {

    @Autowired
    private MedicoRepository medicoRepository;

    @Override
    // http://www.manpagez.com/man/5/crontab/
    // una vez cada dia 1 del mes "0 0 0 1 * *"
    @Scheduled(cron = "0 * * * * *")
    public void analizar() {
        System.out.println("###########################");
        System.out.println("# Informe de benefactores #");
        System.out.println("###########################");
        medicoRepository.getBenefactores(10, 50D).forEach(benefactor -> System.out.println("Benefactor " + benefactor + " - " + new Date()));
    }
}

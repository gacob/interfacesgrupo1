package ies.torredelrey.u1_p2_java_swing_mysql.Controlador;

import ies.torredelrey.u1_p2_java_swing_mysql.Modelo.Tablapapeleria;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanArrayDataSource;
import net.sf.jasperreports.view.JasperViewer;

public class GeneradorInformes {
    
    public static void leerInformeDB(List<Tablapapeleria> lista) {
        try {
            JasperPrint print;
            HashMap param = new HashMap();
            param.put("fecha", LocalDate.now());
            
            JRDataSource datasource = new JRBeanArrayDataSource(lista.toArray());
            String report = "ReportPapeleria.jasper";
            print = JasperFillManager.fillReport(report, param, datasource);
            JasperExportManager.exportReportToPdfFile(print, "informeContacto.pdf");
            JasperViewer.viewReport(print);
            System.out.println("Generado con éxito");
        } catch (JRException ex) {
            Logger.getLogger(GeneradorInformes.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

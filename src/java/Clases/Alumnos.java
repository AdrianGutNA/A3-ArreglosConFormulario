/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

public class Alumnos {
    String matricula;
    String nombre;
    String apellidoPaterno;
    String apellidoMaterno;
    String ddi;
    String dwi;
    String ecbd;
    double promedio;

    public Alumnos(String matricula, String nombre, String apellidoPaterno, String apellidoMaterno, String ddi, String dwi, String ecbd, Double promedio) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.ddi = ddi;
        this.dwi = dwi;
        this.ecbd = ecbd;
        this.promedio = promedio;
    }
   
    public double promedio( ){
             promedio = (Double.parseDouble(ddi)+Double.parseDouble(dwi)+Double.parseDouble(ecbd))/3;
             return promedio;
            };
    
    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getDdi() {
        return ddi;
    }

    public void setDdi(String ddi) {
        this.ddi = ddi;
    }

    public String getDwi() {
        return dwi;
    }

    public void setDwi(String dwi) {
        this.dwi = dwi;
    }

    public String getEcbd() {
        return ecbd;
    }

    public void setEcbd(String ecbd) {
        this.ecbd = ecbd;
    }

    public double getPromedio() {
        return promedio();
    }

    public void setPromedio(double promedio) {
        this.promedio = promedio;
    }
}

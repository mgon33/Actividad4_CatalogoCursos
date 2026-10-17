package org.cuatrovientos;

public class Curso {
    private int id;
    private String nombre;
    private int participantes;
    private int plazas;
    private String categoria;

    public Curso(int id, String nombre, int participantes, int plazas, String categoria) {
        this.id = id;
        this.nombre = nombre;
        this.participantes = participantes;
        this.plazas = plazas;
        this.categoria = categoria;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public int getParticipantes() { return participantes; }
    public void setParticipantes(int participantes) { this.participantes = participantes; }

    public int getPlazas() { return plazas; }
    public void setPlazas(int plazas) { this.plazas = plazas; }

    public String getCategoria() { return categoria; }
    public void setCategoria(String categoria) { this.categoria = categoria; }

    public int getPlazasDisponibles() {
        return plazas - participantes;
    }
}
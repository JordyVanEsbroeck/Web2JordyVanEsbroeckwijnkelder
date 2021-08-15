package domain.model;

import domain.DomainException;

public class Wijn {

    private String naam;    // naam van de wijn
    private String soort;   // soort wijn
    private int jaartal;
    private double prijs;   // kostprijs
    private String omschrijving;   // omschrijving van de wijn, maximaal 200 karakters

    /*public Wijn() {

    }*/

    public Wijn(String naam, String soort, int jaartal, double prijs, String omschrijving) {
        this.setNaam(naam);
        this.setSoort(soort);
        this.setJaartal(jaartal);
        this.setPrijs(prijs);
        this.setOmschrijving(omschrijving);
    }

    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
        if (naam == null || naam.trim().isEmpty())
            throw new DomainException("De naam van de wijn is niet ingevuld");
        this.naam = naam;
    }

    public String getSoort() {
        return soort;
    }

    public void setSoort(String soort) {
        if (soort == null || soort.trim().isEmpty())
            throw new DomainException("De soort is niet ingevuld");
        this.soort = soort;
    }

    private void setJaartal(int jaartal) {
        if (jaartal < 0)
            throw new DomainException("Het gegeven jaartal is niet geldig");
        this.jaartal = jaartal;
    }


    public int getJaartal() {
        return jaartal;
    }

    public double getPrijs() {
        return prijs;
    }

    public void setPrijs(double prijs) {
        if (prijs < 0)
            throw new DomainException("De prijs moet positief zijn");
        this.prijs = prijs;
    }

    public String getOmschrijving() {
        return omschrijving;
    }

    public void setOmschrijving(String omschrijving) {
        if (omschrijving == null || omschrijving.isEmpty())
            throw new DomainException("De omschrijving is niet ingevuld");
        if (omschrijving.length() > 200)
            throw new DomainException("De omschrijving is te lang (max 200 karakters)");
        this.omschrijving = omschrijving;
    }

}

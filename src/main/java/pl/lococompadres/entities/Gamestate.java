package pl.lococompadres.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Gamestate {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private long cash;
	private long thugs;
	private long whores;
	private long drugs;

	public long getCash() {
		return cash;
	}

	public void setCash(long cash) {
		this.cash = cash;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getThugs() {
		return thugs;
	}

	public void setThugs(long thugs) {
		this.thugs = thugs;
	}

	public long getWhores() {
		return whores;
	}

	public void setWhores(long whores) {
		this.whores = whores;
	}

	public long getDrugs() {
		return drugs;
	}

	public void setDrugs(long drugs) {
		this.drugs = drugs;
	}
	
}

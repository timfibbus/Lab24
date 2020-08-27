package co.timfibbus.pizzaparty;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Rsvp {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String attendee;
	private String comment;
	@ManyToOne
	private Party party;
	
	public Rsvp() {
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAttendee() {
		return attendee;
	}

	public void setAttendee(String attendee) {
		this.attendee = attendee;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Party getParty() {
		return party;
	}

	public void setParty(Party party) {
		this.party = party;
	}

	@Override
	public String toString() {
		return "Rsvp [id=" + id + ", attendee=" + attendee + ", comment=" + comment + ", party=" + party + "]";
	}
	
	

}

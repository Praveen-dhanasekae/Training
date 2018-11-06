package com.cts.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Hint {
	@Id
	private int hintId;
	private String hintDes;
	public int getHintId() {
		return hintId;
	}
	public void setHintId(int hintId) {
		this.hintId = hintId;
	}
	public String getHintDes() {
		return hintDes;
	}
	public void setHintDes(String hintDes) {
		this.hintDes = hintDes;
	}

}

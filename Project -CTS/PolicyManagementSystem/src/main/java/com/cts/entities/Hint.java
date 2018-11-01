package com.cts.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Hint {
	@Id
	private int hintPKId;
	private String hintDes;
	public int getHintPKId() {
		return hintPKId;
	}
	public void setHintPKId(int hintPKId) {
		this.hintPKId = hintPKId;
	}
	public String getHintDes() {
		return hintDes;
	}
	public void setHintDes(String hintDes) {
		this.hintDes = hintDes;
	}

}

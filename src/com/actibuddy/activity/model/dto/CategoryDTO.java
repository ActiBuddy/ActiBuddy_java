package com.actibuddy.activity.model.dto;

public class CategoryDTO implements java.io.Serializable{

	private String[] value;
	
	public CategoryDTO() {

	}

	public CategoryDTO(String[] value) {
		super();
		this.value = value;
	}

	public String[] getValue() {
		return value;
	}

	public void setValue(String[] value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "CategoryDTO [value=" + value + "]";
	}
}

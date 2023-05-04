package com.lithan.application.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "cars")
public class Cars {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "car_id")
	private Long carId;
	
	@Column(name = "model")
	private String model;
	
	@Column(name = "brand")
	private String brand;
	
	@Column(name = "make")
	private String make;
	
	@Column(name = "price")
	private String price;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "user_id")
	private Long userId;

	/**
	 * 
	 */
	public Cars() {
		// TODO Auto-generated constructor stub
	}

	public Long getCarId() {
		return carId;
	}

	public void setCarId(Long carId) {
		this.carId = carId;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	/**
	 * @param carId
	 * @param model
	 * @param brand
	 * @param make
	 * @param price
	 * @param description
	 * @param user_id
	 */
	public Cars(Long carId, String model, String brand, String make, String price, String description, Long userId) {
		super();
		this.carId = carId;
		this.model = model;
		this.brand = brand;
		this.make = make;
		this.price = price;
		this.description = description;
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Cars [carId=" + carId + ", model=" + model + ", brand=" + brand + ", make=" + make + ", price=" + price
				+ ", description=" + description + ", user_id=" + userId + "]";
	}

	
	
	
	
	
}

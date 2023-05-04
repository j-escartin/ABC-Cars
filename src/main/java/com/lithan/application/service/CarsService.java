package com.lithan.application.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.application.model.Cars;
import com.lithan.application.repository.CarsRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class CarsService {
	
	@Autowired
	CarsRepository carsRepo;
	
	public void saveCar(Cars car) {
		carsRepo.save(car);
	}
	
	public List<Cars> getAllRecords(){
		return carsRepo.findAll();
	}
	
	public Optional<Cars> getCarById(Long id){
		return carsRepo.findById(id);
	}
	
	public int countCars() {
		return (int) carsRepo.count();
	}
	
	public List<Cars> carsFilter(String make, String model, String brand, String price){
		return carsRepo.carsFilter(make, model, price, brand);
	}
	
	public void deletecar(Long id) {
		carsRepo.deleteById(id);
	}
	
	public List<Cars> getCarByUserId(Long userId){
		return carsRepo.getByUserId(userId);
	}
	
	public List<Cars> searchCarByBrand(String brand){
		return carsRepo.searchCarByBrand(brand);
	}
}



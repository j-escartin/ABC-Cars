package com.lithan.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.lithan.application.model.Cars;

@Repository
public interface CarsRepository extends JpaRepository<Cars, Long> {

	@Query(value = "SELECT * FROM cars WHERE make LIKE '%' :make '%'"
			+ " OR model LIKE '%' :model '%'"
			+ " OR price LIKE '%' :price '%'"
			+ " OR brand LIKE '%' :brand '%'", nativeQuery = true)
	List<Cars> carsFilter(
			@Param("make") String make,
			@Param("model") String model,
			@Param("price") String price,
			@Param("brand") String brand
			);
	
	@Query(value = "SELECT * FROM cars WHERE brand LIKE '%' :brand '%'", nativeQuery = true)
	List<Cars> searchCarByBrand(@Param("brand") String brand);
	
	@Query (value = "SELECT * FROM cars WHERE user_id = :userId ", nativeQuery = true)
	List<Cars> getByUserId(@Param("userId") Long userId);
}

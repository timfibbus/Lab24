package co.timfibbus.pizzaparty;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import co.timfibbus.pizzaparty.Pizza;

public interface PizzaRepo extends JpaRepository<Pizza, Long> {
	
	int x = 0;
	
	List<Pizza> findById();
	
	List<Pizza> findByVotesWhereVotesGreaterThan(Integer x);
	
	
	
	
	
}

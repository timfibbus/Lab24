package co.timfibbus.pizzaparty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.timfibbus.pizzaparty.PizzaDao;
import co.timfibbus.pizzaparty.PartyDao;

@Controller
public class PizzaController {
	
	@Autowired
	private PizzaDao pizzaDao;
	
	@Autowired
	private PartyDao partyDao;
	
	@RequestMapping("/")
	public String home(Model model) {
		
		List<Pizza> pizza = pizzaDao.findAll();
		model.addAttribute("pizza", pizza);
		
		return "home";
	}
	
	@RequestMapping("/add")
	public String addPie(Model model) {
		List<Party> parties=partyDao.findAll();
		List<Pizza> pizza = pizzaDao.findAll();
		model.addAttribute("pizzas", pizza);
		model.addAttribute("parties", parties);
		return "add";
	}
	@PostMapping("/add")
	public String adder(Pizza pizza) {
		System.out.println(pizza.toString());
		pizzaDao.save(pizza);
		return "redirect:/";
	}
	
	@RequestMapping("/votes/{id}")
	public String showVotes(@PathVariable("id")Pizza pizza) {
		
		int i = pizza.getVotes();
		i++;
		pizza.setVotes(i);
		System.out.println(pizza.toString());
		pizzaDao.save(pizza);
		return "votes";
	}
	
	@RequestMapping("/votes")
	public String showVotes(Model model){
		List<Pizza> pizzas = pizzaDao.findAll();
		model.addAttribute("pizzas", pizzas);
		return "votes";
	}
	
	@RequestMapping("/review")
	public String review(){
		return "review";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam("id") Long id, Model model) {
		Pizza pizza = pizzaDao.findById(id).get();
		model.addAttribute("pizza", pizza);
		return "detail";
	}
}

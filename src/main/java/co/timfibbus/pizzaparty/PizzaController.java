package co.timfibbus.pizzaparty;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.timfibbus.pizzaparty.PizzaDao;
import co.timfibbus.pizzaparty.PizzaRepo;

@Controller
public class PizzaController {
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/add")
	public String addPie() {
		return "home";
	}
	
	@RequestMapping("/votes")
	public String showVotes() {
		return "votes";
	}
	
	@RequestMapping("/review")
	public String review(){
		return "review";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam("id") Long id, Model model) {
		Pizza pizza = dao.findById(id).get();
		model.addAttribute("pizza", pizza);
		return "detail";
	}
}

package co.timfibbus.pizzaparty;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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
		
	@RequestMapping("/pizza")
	public String home(Model model) {	
		List<Pizza> pizza = pizzaDao.findAll();
		model.addAttribute("pizza", pizza);	
		return "pizza";
	}
	
	@RequestMapping("/add")
	public String addPie(Model model) {
		List<Party> parties=partyDao.findAll();
		List<Pizza> pizza = pizzaDao.findAll();
		model.addAttribute("pizzas", pizza);
		model.addAttribute("parties", parties);
		return "add";
	}
	@PostMapping("/add-submit")
	public String adder(Pizza pizza) {
		System.out.println(pizza.toString());
		pizzaDao.save(pizza);
		return "redirect:/";
	}

	@RequestMapping("/votes/{id}")
	public String showVotes(@PathVariable("id")Pizza pizza, Model model){
		int i = pizza.getVotes();
		i++;
		pizza.setVotes(i);
		System.out.println(pizza.toString());
		pizzaDao.save(pizza);
		return "redirect:/";
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
	
	@RequestMapping("/")
	public String partyLife(Model model) {
		List<Party> partyz = partyDao.findAll();
		
		model.addAttribute("partyz", partyz);
		return "party";		
	}

	
	@RequestMapping("/detail/{id}")
	public String rsvps(@PathVariable("id")Party party, Model model) {
		Set<Rsvp> rsvps = party.getRsvps();
		model.addAttribute("rsvps", rsvps);
		return "rsvp";
	}
	
	@PostMapping("/rsvp")
	public String rsvpay(Model model,Long id) {
		model.addAttribute("id", id);
		return "/rvsp/?=id";
	}
	
	@PostMapping("/rsvp/{id}")
	public String rsvpAdder(@PathVariable("id")Rsvp rsvp, Model model, Party party) {
		Set<Rsvp> rsvps = party.getRsvps();
		rsvps.add(rsvp);
		party.setRsvps(rsvps);
		partyDao.save(party);
	
		return "redirect:/";
	}
	
	@PostMapping("/add-rsvp")
	public String rsvp() {
		
		return "redirect:/";
	}
}

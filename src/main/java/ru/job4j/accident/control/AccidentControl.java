package ru.job4j.accident.control;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.job4j.accident.model.Accident;
import ru.job4j.accident.service.AccidentService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AccidentControl {
    private AccidentService service;

    public AccidentControl(AccidentService service) {
        this.service = service;
    }

    @GetMapping("/create")
    public String create(Model model) {
        model.addAttribute("user", SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        model.addAttribute("types", service.showAllType());
        model.addAttribute("rules", service.showAllRule());
        return "accident/create";
    }

    @GetMapping("/edit/{id}")
    public String edit(Model model, @PathVariable("id") int id) {
        model.addAttribute("user", SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        model.addAttribute("accident", service.findById(id));
        model.addAttribute("types", service.showAllType());
        model.addAttribute("rules", service.showAllRule());
        return "accident/edit";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Accident accident,
                       @RequestParam("type.id") int typeID,
                       HttpServletRequest req
    ) {
        String[] rids = req.getParameterValues("rIds");
        accident.setType(service.typeFindById(typeID));
        accident.setRules(service.addRules(rids));
        service.save(accident);
        return "redirect:/";
    }
}

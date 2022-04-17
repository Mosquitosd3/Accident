package ru.job4j.accident.service;

import org.springframework.stereotype.Service;
import ru.job4j.accident.model.Accident;
import ru.job4j.accident.model.AccidentType;
import ru.job4j.accident.model.Rule;
import ru.job4j.accident.repository.AccidentRepository;
import ru.job4j.accident.repository.RuleRepository;
import ru.job4j.accident.repository.TypeRepository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class AccidentService {
    private AccidentRepository accRep;
    private TypeRepository typeRep;
    private RuleRepository ruleRep;

    public AccidentService(AccidentRepository accRep,
                           TypeRepository typeRep,
                           RuleRepository ruleRep) {
        this.accRep = accRep;
        this.typeRep = typeRep;
        this.ruleRep = ruleRep;
    }

    public void save(Accident accident) {
        accRep.save(accident);
    }

    public List<Accident> showAllAccident() {
        List<Accident> rsl = new ArrayList<>();
        accRep.findAll().forEach(rsl::add);
        return rsl;
    }

    public Accident findById(int id) {
        return accRep.findById(id).get();
    }

    public List<AccidentType> showAllType() {
        List<AccidentType> rsl = new ArrayList<>();
        typeRep.findAll().forEach(rsl::add);
        return rsl;
    }

    public AccidentType typeFindById(int id) {
        return typeRep.findById(id).get();
    }

    public List<Rule> showAllRule() {
        List<Rule> rsl = new ArrayList<>();
        ruleRep.findAll().forEach(rsl::add);
        return rsl;
    }

    public Rule findRuleById(int id) {
        return ruleRep.findById(id).get();
    }

    public Set<Rule> addRules(String[] ids) {
       Set<Rule> rsl = new HashSet<>();
       for (String id : ids) {
           rsl.add(findRuleById(Integer.parseInt(id)));
       }
       return rsl;
    }
}

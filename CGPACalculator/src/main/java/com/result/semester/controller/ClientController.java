package com.result.semester.controller;

import com.result.semester.model.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ClientController {

    @GetMapping({"/", "/subjects"})
    public String showForm(Model model) {
        model.addAttribute("subject", new Subject());
        return "subjects";
    }

    @PostMapping("/calculate")
    public String calculateResult(@RequestParam("grades") int[] grades,
                                  @RequestParam("credits") double[] credits,
                                  Model model) {
        if (grades.length != credits.length) {
            model.addAttribute("error", "Invalid input: Number of grades and credits do not match");
            return "subjects";
        }

        double totalGradePoints = 0;
        double totalCredits = 0;

        for (int i = 0; i < grades.length; i++) {
            totalGradePoints += grades[i] * credits[i];
            totalCredits += credits[i];
        }

        double gpa = totalCredits != 0 ? totalGradePoints / totalCredits : 0;
        model.addAttribute("gpa", gpa);
        return "result";
    }
}

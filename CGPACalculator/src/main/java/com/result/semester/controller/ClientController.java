package com.result.semester.controller;


import com.result.semester.model.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ClientController {

	@GetMapping({"/", "/subjects"})
    public String showForm(Model model) {
        SubjectForm subjectForm = new SubjectForm();
        subjectForm.getSubjects().add(new Subject());

        model.addAttribute("subjectForm", subjectForm);
        return "subjects";
    }

    @PostMapping("/subjects")
    public String submitForm(SubjectForm subjectForm, Model model) {
        double gpa = calculateGPA(subjectForm);
        model.addAttribute("gpa", gpa);
        model.addAttribute("subjectForm", subjectForm);
        return "result";
    }

    private double calculateGPA(SubjectForm subjectForm) {
        double totalPoints = 0;
        double totalCredits = 0;
        for (Subject subject : subjectForm.getSubjects()) {
            totalPoints += subject.getGrade() * subject.getCredit();
            totalCredits += subject.getCredit();
        }
        return totalCredits == 0 ? 0 : totalPoints / totalCredits;
    }
}

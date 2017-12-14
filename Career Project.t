import GUI
% Program's Widgets
var home_button, credit_button, education_button, examples_button, overallJob_button, salaryImplecations_button, quit_button : int
var next_button : int
% These two variables the use of if will be used to create one next button instead of a multitude.
var page, whichScreen : int := 0
% Program title and size.
setscreen ("graphics:1000, 1000")
Window.Set (defWinId, "title:Web Designers - Nima Aliarzadeh")
% All the hide and show procedures below will be used in the procedures for the buttons so that those procedures are simple.
% This will be in any button that leaves the home screen.
proc hide_home
    GUI.Hide (credit_button)
    GUI.Hide (education_button)
    GUI.Hide (examples_button)
    GUI.Hide (overallJob_button)
    GUI.Hide (salaryImplecations_button)
end hide_home
% This will be in the home button which returns to the homescreen.
proc show_home
    GUI.Show (credit_button)
    GUI.Show (education_button)
    GUI.Show (examples_button)
    GUI.Show (overallJob_button)
    GUI.Show (salaryImplecations_button)
end show_home
% This will be in the home button for when leaving credit screen.
proc hide_credit
end hide_credit
% This will be in the credit button to show the bibliography screen.
proc show_credit
end show_credit
% This will be in the home button to hide the educations screen.
proc hide_education
end hide_education
% This will be in the educations button to show the education screen.
proc show_education
end show_education
% The pattern of the hide procedures in the home button and show procedures in the button it's named after continues.
proc hide_examples
end hide_examples

proc show_examples
end show_examples

proc hide_overallJob
end hide_overallJob

proc show_overallJob
end show_overallJob

proc hide_salaryImplecation
end hide_salaryImplecation

proc show_salaryImplecation
end show_salaryImplecation
% All Button Procedures
proc home
    hide_credit
    hide_education
    hide_examples
    hide_overallJob
    hide_salaryImplecations
    show_home
end home

proc credit
    hide_home
    show_credit
end credit

proc education
    hide_home
    show_education 
end education

proc examples
    hide_home
    show_examples
end examples

proc overallJob
    hide_home
    show_overallJob
end overallJob

proc thanks
    cls
    put "Thanks for using this program!"
    GUI.Quit
end thanks

home_button := GUI.CreateButton (5, 5, 50, "Home", home)
credit_button := GUI.CreateButton (60, 5, 50, "Citations", credit)
education_button := GUI.CreateButton (115, 5, 50, "Education", education)
examples_button := GUI.CreateButton (170, 5, 50, "Examples", examples)
overallJob_button := GUI.CreateButton (225, 5, 50, "Job Summary", overallJob)
salaryImplecations_button := GUI.CreateButton (280, 5, 50, "Salary", salaryImplecations)
quit_button := GUI.CreateButton (940, 999-GUI.GetHeight(quit_button), 50, "Quit", thanks)
next_button :=
loop
    exit when GUI.ProcessEvent
end loop

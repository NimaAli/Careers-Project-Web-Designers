import GUI
% Program's Widgets
var home_button, credit_button, education_button, examples_button, overallJob_button, salaryImplecations_button, quit_button : int

% This will be in any button that leaves the home screen.
proc hide_homeScreen
    GUI.Hide (credit_button)
    GUI.Hide (education_button)
    GUI.Hide (examples_button)
    GUI.Hide (overallJob_button)
    GUI.Hide (salaryImplecations_button)
end hide_homeScreen
% This will be in the home button which returns to the homescreen.
proc show_homeScreen
    GUI.Show (credit_button)
    GUI.Show (education_button)
    GUI.Show (examples_button)
    GUI.Show (overallJob_button)
    GUI.Show (salaryImplecation_button)
end show_homeScreen
% This will be in the home button for when leaving credit screen.
proc hide_creditScreen
proc hide_creditScreen
% This will be in the credit button to show the bibliography screen.
proc show_creditScreen
proc show_creditScreen









loop
    exit when GUI.ProcessEvent
end loop

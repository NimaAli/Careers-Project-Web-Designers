import GUI
% Program's Widgets
var home_button, credit_button, education_button, examples_button, overallJob_button, salary_button, quit_button : int
var next_button, back_button : int
% These two variables the use of if will be used to create one next button instead of a multitude.
var page, whichScreen : int := 1

setscreen ("graphics: 700, 600;nobuttonbar")
Window.Set (defWinId, "title:Web Designers - Nima Aliarzadeh")

proc callFile (fileName : string)
var fileNumber : int
var lineNumber := 0
var line : string
open : fileNumber, fileName, get
   if fileNumber > 0 then
     loop
          lineNumber += 1
          exit when eof (fileNumber)
          get : fileNumber, line : *
          put lineNumber, ": ", line
     end loop
   else
     put "File not found."
   end if
end callFile

% All the hide and show procedures below will be used in the procedures for the buttons so that those procedures are simple.

% This will be in any button that leaves the home screen.
proc hide_home
    GUI.Hide (credit_button)
    GUI.Hide (education_button)
    GUI.Hide (examples_button)
    GUI.Hide (overallJob_button)
    GUI.Hide (salary_button)
end hide_home
% This will be in the home button which returns to the homescreen.
proc show_home
    Window.Set (defWinId, "title: Home - Web Designers")
    GUI.Hide (next_button)
    GUI.Hide (back_button)
    GUI.Hide (home_button)
    GUI.Show (credit_button)
    GUI.Show (education_button)
    GUI.Show (examples_button)
    GUI.Show (overallJob_button)
    GUI.Show (salary_button)
end show_home
% This will be in the home button for when leaving credit screen.
proc hide_credit
end hide_credit
% This will be in the credit button to show the bibliography screen.
proc show_credit
    Window.Set (defWinId, "title: Citations - Web Designers")
    GUI.Show (home_button)
end show_credit
% The pattern of the hide procedures in the home button and show procedures in the button it's named after continues.
proc hide_education
end hide_education

proc show_education
    Window.Set (defWinId, "title: Education - Web Designers")
    GUI.Show (home_button)
    callFile ("Education.txt")
end show_education

proc hide_examples
end hide_examples

proc show_examples
    Window.Set (defWinId, "title: Job Examples & Market Outlook - Web Designers")
    GUI.Show (home_button)
end show_examples

proc hide_overallJob
end hide_overallJob

proc show_overallJob
    Window.Set (defWinId, "title: What Does A Web Designer Do? - Web Designers")
    GUI.Show (home_button)
end show_overallJob

proc hide_salary
    
end hide_salary

proc show_salary
    Window.Set (defWinId, "title: Salary - Web Designers")
    GUI.Show (home_button)
end show_salary

% All Button Procedures
proc home
    whichScreen := 1
    page := 1
    hide_credit
    hide_education
    hide_examples
    hide_overallJob
    hide_salary
    show_home
end home

proc credit
    whichScreen := 2
    hide_home
    show_credit
end credit

proc education
    whichScreen := 3
    hide_home
    show_education 
end education

proc examples
    whichScreen := 4
    hide_home
    show_examples
end examples

proc overallJob
    whichScreen := 5
    hide_home
    show_overallJob
end overallJob

proc salary
    whichScreen := 6
    hide_home
    show_salary
end salary

proc thanks
    cls
    put "Thanks for using this program!"
    GUI.Quit
end thanks

% if the page = last one we no next, if its first page no back
proc next
    page += 1
    % The First ifs will chec which subject it is changed e.x. citations screen, the second if will check which page it is on.  Then it changes the page.
    if whichScreen = 2 then
    % Undetermind number of pages currently
    elsif whichScreen = 3 then
    
    elsif whichScreen = 4 then
    
    elsif whichScreen = 5 then
    
    elsif whichScreen = 6 then
    
    end if
end next

proc back
    page -= 1
    % Same logic as the next button
       if whichScreen = 2 then
    % Undetermind number of pages currently
    elsif whichScreen = 3 then
    
    elsif whichScreen = 4 then
    
    elsif whichScreen = 5 then
    
    elsif whichScreen = 6 then
    
    end if
end back

% Main Program
home_button := GUI.CreateButton (1, 1, 50, "Home", home)
credit_button := GUI.CreateButton (30, 50, 50, "Citations", credit)
education_button := GUI.CreateButton (110, 20, 50, "Education", education)
examples_button := GUI.CreateButton (120, 50, 50, "Examples And Market Outlook", examples)
overallJob_button := GUI.CreateButton (210, 20, 50, "Job Description", overallJob)
salary_button := GUI.CreateButton (322, 50, 50, "Salary", salary)
quit_button := GUI.CreateButton ( 371, 1, 50, "Quit", thanks)
next_button := GUI.CreateButton (371, 469, 50, "Next", next)
back_button := GUI.CreateButton (1, 469, 50, "Back", back)

% Done so the user doesn't start with these buttons which have no function in the home page.
GUI.Hide (home_button)
GUI.Hide (next_button)
GUI.Hide (back_button)
loop
    exit when GUI.ProcessEvent
end loop

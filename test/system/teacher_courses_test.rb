require "application_system_test_case"

class TeacherCoursesTest < ApplicationSystemTestCase
  setup do
    @teacher_course = teacher_courses(:one)
  end

  test "visiting the index" do
    visit teacher_courses_url
    assert_selector "h1", text: "Teacher Courses"
  end

  test "creating a Teacher course" do
    visit teacher_courses_url
    click_on "New Teacher Course"

    fill_in "Code", with: @teacher_course.code
    fill_in "Course", with: @teacher_course.course_id
    fill_in "Semester", with: @teacher_course.semester
    fill_in "Teacher", with: @teacher_course.teacher_id
    fill_in "Year", with: @teacher_course.year
    click_on "Create Teacher course"

    assert_text "Teacher course was successfully created"
    click_on "Back"
  end

  test "updating a Teacher course" do
    visit teacher_courses_url
    click_on "Edit", match: :first

    fill_in "Code", with: @teacher_course.code
    fill_in "Course", with: @teacher_course.course_id
    fill_in "Semester", with: @teacher_course.semester
    fill_in "Teacher", with: @teacher_course.teacher_id
    fill_in "Year", with: @teacher_course.year
    click_on "Update Teacher course"

    assert_text "Teacher course was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher course" do
    visit teacher_courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher course was successfully destroyed"
  end
end

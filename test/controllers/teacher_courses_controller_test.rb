require 'test_helper'

class TeacherCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_course = teacher_courses(:one)
  end

  test "should get index" do
    get teacher_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_course_url
    assert_response :success
  end

  test "should create teacher_course" do
    assert_difference('TeacherCourse.count') do
      post teacher_courses_url, params: { teacher_course: { code: @teacher_course.code, course_id: @teacher_course.course_id, semester: @teacher_course.semester, teacher_id: @teacher_course.teacher_id, year: @teacher_course.year } }
    end

    assert_redirected_to teacher_course_url(TeacherCourse.last)
  end

  test "should show teacher_course" do
    get teacher_course_url(@teacher_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_course_url(@teacher_course)
    assert_response :success
  end

  test "should update teacher_course" do
    patch teacher_course_url(@teacher_course), params: { teacher_course: { code: @teacher_course.code, course_id: @teacher_course.course_id, semester: @teacher_course.semester, teacher_id: @teacher_course.teacher_id, year: @teacher_course.year } }
    assert_redirected_to teacher_course_url(@teacher_course)
  end

  test "should destroy teacher_course" do
    assert_difference('TeacherCourse.count', -1) do
      delete teacher_course_url(@teacher_course)
    end

    assert_redirected_to teacher_courses_url
  end
end

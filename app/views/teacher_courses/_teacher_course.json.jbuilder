json.extract! teacher_course, :id, :code, :year, :semester, :teacher_id, :course_id, :created_at, :updated_at
json.url teacher_course_url(teacher_course, format: :json)

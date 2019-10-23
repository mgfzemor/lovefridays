class TeacherCoursesController < ApplicationController
  before_action :set_teacher_course, only: [:show, :edit, :update, :destroy]

  # GET /teacher_courses
  # GET /teacher_courses.json
  def index
    @teacher_courses = TeacherCourse.all
  end

  # GET /teacher_courses/1
  # GET /teacher_courses/1.json
  def show
  end

  # GET /teacher_courses/new
  def new
    @teacher_course = TeacherCourse.new
  end

  # GET /teacher_courses/1/edit
  def edit
  end

  # POST /teacher_courses
  # POST /teacher_courses.json
  def create
    @teacher_course = TeacherCourse.new(teacher_course_params)

    respond_to do |format|
      if @teacher_course.save
        format.html { redirect_to @teacher_course, notice: 'Teacher course was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_course }
      else
        format.html { render :new }
        format.json { render json: @teacher_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_courses/1
  # PATCH/PUT /teacher_courses/1.json
  def update
    respond_to do |format|
      if @teacher_course.update(teacher_course_params)
        format.html { redirect_to @teacher_course, notice: 'Teacher course was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_course }
      else
        format.html { render :edit }
        format.json { render json: @teacher_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_courses/1
  # DELETE /teacher_courses/1.json
  def destroy
    @teacher_course.destroy
    respond_to do |format|
      format.html { redirect_to teacher_courses_url, notice: 'Teacher course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_course
      @teacher_course = TeacherCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_course_params
      params.require(:teacher_course).permit(:code, :year, :semester, :teacher_id, :course_id)
    end
end

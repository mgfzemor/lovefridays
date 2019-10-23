# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_courses
  Course.new(code: 'INF01154', name: 'REDES DE COMPUTADORES N').save!
  Course.new(code: 'INF01151', name: 'SISTEMAS OPERACIONAIS II N').save!
  Course.new(code: 'INF01147', name: 'COMPILADORES').save!
  Course.new(code: 'INF01142', name: 'SISTEMAS OPERACIONAIS I N').save!
end

def seed_teachers
  Teacher.new(full_name: 'Edson Prestes e Silva Junior', email: 'prestes@inf.ufrgs.br').save!
  Teacher.new(full_name: 'Bruno Castro da Silva', email: 'bruno.silva@inf.ufrgs.br').save!
  Teacher.new(full_name: 'Viviane Pereira Moreira', email: 'viviane@inf.ufrgs.br').save!
  Teacher.new(full_name: 'Luciana Salete Buriol', email: 'buriol@inf.ufrgs.br').save!
end

seed_courses()
seed_teachers()

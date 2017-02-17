# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = Post.create([{name: 'Ash', subject: 'HELP HELP THE WALL IS FALLING', category: 'Latest news',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam tempus risus,
  quis aliquam lacus mattis eget. In id sem nec orci venenatis mollis. Ut vitae tempus tortor,
  sed vulputate est. In convallis tincidunt mauris quis aliquet. Maecenas varius feugiat leo id
  fermentum. Vestibulum condimentum, ligula eget ornare porta, metus ligula sagittis nunc, sed
  varius sapien nisl vitae ligula. Vestibulum id turpis nisl.'}, {name:'Yao Min', subject: 'Over meditation',
  category: 'Need Help', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam
   tempus risus, quis aliquam lacus mattis eget. In id sem nec orci venenatis mollis. Ut vitae tempus
   tortor, sed vulputate est. In convallis tincidunt mauris quis aliquet. Maecenas varius feugiat leo
   id fermentum. Vestibulum condimentum, ligula eget ornare porta, metus ligula sagittis nunc, sed
   varius sapien nisl vitae ligula. Vestibulum id turpis nisl.'}])

require "faker"

Rails.logger = Logger.new(STDOUT)

Rails.logger.info "Creating genres..."

%w(Action Comedy Sci-Fi War Crime
   Horror Sport Western Drama
   Musicial Romance Thriller).each do |genre|
  Genre.find_or_create_by!(name: genre)
end

books = [
  {
    title: "Pulp Fiction",
    year_of_release: "1994",
    rating: "5",
    original_language: "Polish",
    number_of_pages: "150",
    translated_into: "Germany, English"
  },
  {
    title: "Django",
    year_of_release: "2012",
    rating: "6",
    original_language: "Portuguese",
    number_of_pages: "256",
    translated_into: "Germany, English, Spanish"
  },
  {
    title: "Kill Bill",
    year_of_release: "2003",
    rating: "7",
    original_language: "Spanish",
    number_of_pages: "179",
    translated_into: "Polish"
  },
  {
    title: "Kill Bill 2",
    year_of_release: "2004",
    rating: "8",
    original_language: "Greek",
    number_of_pages: "300",
    translated_into: "Turkish, French"
  },
  {
    title: "Inglourious Basterds",
    year_of_release: "2009",
    rating: "9",
    original_language: "Polish",
    number_of_pages: "335",
    translated_into: "German, French"
  },
  {
    title: "Godfather",
    year_of_release: "1972",
    rating: "2",
    original_language: "Turkish",
    number_of_pages: "846",
    translated_into: "English, Polish"
  },
  {
    title: "The Dark Knight",
    year_of_release: "2008",
    rating: "3",
    original_language: "French",
    number_of_pages: "637",
    translated_into: "English"
  },
  {
    title: "Star Wars V",
    year_of_release: "1980",
    rating: "4",
    original_language: "German",
    number_of_pages: "432",
    translated_into: "English"
  },
  {
    title: "Inception",
    year_of_release: "2010",
    rating: "5",
    original_language: "Italian",
    number_of_pages: "321",
    translated_into: "Germany, English"
  },
  {
    title: "Deadpool",
    year_of_release: "2016",
    rating: "6",
    original_language: "English",
    number_of_pages: "125",
    translated_into: "Germany, French, Italian"
  }
]

Rails.logger.info "Creating authors..."

authors = [
  {
    first_name: "Kasia",
    last_name: "Szyszka",
    rating: "10",
    birth_date: "1950,10,04",
    description: "Dr. Maura Isles will in Kingdom Come Zuflucht vor dem Schneechaos finden. Doch es sieht aus, als hätten die Bewohner ihre Häuser nur Minuten vor ihrer Ankunft fluchtartig verlassen: Fenster und Türen stehen offen, Tische sind gedeckt – doch das Essen auf den Tellern ist festgefroren, kein Mensch weit und breit … Mauras Spur verliert sich. Bis eine Unfallmeldung Jane Rizzoli in Boston erreicht: Ein Wagen mit vier Insassen ist in eine Schlucht gestürzt. Unter den Toten ist eine Frau in Mauras Alter, und im Fond liegt ihr Gepäck"
  },
  {
    first_name: "Ewelina",
    last_name: "Szyszka",
    rating: "10",
    birth_date: "1970,12,15",
    description: "Dr. Maura Isles will in Kingdom Come Zuflucht vor dem Schneechaos finden. Doch es sieht aus, als hätten die Bewohner ihre Häuser nur Minuten vor ihrer Ankunft fluchtartig verlassen: Fenster und Türen stehen offen, Tische sind gedeckt – doch das Essen auf den Tellern ist festgefroren, kein Mensch weit und breit … Mauras Spur verliert sich. Bis eine Unfallmeldung Jane Rizzoli in Boston erreicht: Ein Wagen mit vier Insassen ist in eine Schlucht gestürzt. Unter den Toten ist eine Frau in Mauras Alter, und im Fond liegt ihr Gepäck"
  },
  {
    first_name: "Kamila",
    last_name: "Szyszka",
    rating: "10",
    birth_date: "1850,02,26",
    description: "Dr. Maura Isles will in Kingdom Come Zuflucht vor dem Schneechaos finden. Doch es sieht aus, als hätten die Bewohner ihre Häuser nur Minuten vor ihrer Ankunft fluchtartig verlassen: Fenster und Türen stehen offen, Tische sind gedeckt – doch das Essen auf den Tellern ist festgefroren, kein Mensch weit und breit … Mauras Spur verliert sich. Bis eine Unfallmeldung Jane Rizzoli in Boston erreicht: Ein Wagen mit vier Insassen ist in eine Schlucht gestürzt. Unter den Toten ist eine Frau in Mauras Alter, und im Fond liegt ihr Gepäck"
  },
  {
    first_name: "Pawel",
    last_name: "Szyszka",
    rating: "10",
    birth_date: "1644,05,15",
    description: "Dan Brown is the author of numerous #1 bestselling novels, including The Da Vinci Code, which has become one of the best selling novels of all time as well as the subject of intellectual debate among readers and scholars. Brown’s novels are published in 56 languages around the world with over 200 million copies in print. In 2005, Brown was named one of the 100 Most Influential People in the World by TIME Magazine, whose editors credited him with “keeping the publishing industry afloat; renewed interest in Leonardo da Vinci and early Christian history; spiking tourism to Paris and Rome; a growing membership in secret societies; the ire of Cardinals in Rome; eight books denying the claims of the novel and seven guides to read along with it; a flood of historical thrillers; and a major motion picture franchise."
  },
  {
    first_name: "Przemek",
    last_name: "Szyszka",
    rating: "10",
    birth_date: "1545,03,16",
    description: "Dan Brown is the author of numerous #1 bestselling novels, including The Da Vinci Code, which has become one of the best selling novels of all time as well as the subject of intellectual debate among readers and scholars. Brown’s novels are published in 56 languages around the world with over 200 million copies in print. In 2005, Brown was named one of the 100 Most Influential People in the World by TIME Magazine, whose editors credited him with “keeping the publishing industry afloat; renewed interest in Leonardo da Vinci and early Christian history; spiking tourism to Paris and Rome; a growing membership in secret societies; the ire of Cardinals in Rome; eight books denying the claims of the novel and seven guides to read along with it; a flood of historical thrillers; and a major motion picture franchise."
  },
  {
    first_name: "Sebastian",
    last_name: "Szyszka",
    rating: "10",
    birth_date: "1163,08,19",
    description: "Dan Brown is the author of numerous #1 bestselling novels, including The Da Vinci Code, which has become one of the best selling novels of all time as well as the subject of intellectual debate among readers and scholars. Brown’s novels are published in 56 languages around the world with over 200 million copies in print. In 2005, Brown was named one of the 100 Most Influential People in the World by TIME Magazine, whose editors credited him with “keeping the publishing industry afloat; renewed interest in Leonardo da Vinci and early Christian history; spiking tourism to Paris and Rome; a growing membership in secret societies; the ire of Cardinals in Rome; eight books denying the claims of the novel and seven guides to read along with it; a flood of historical thrillers; and a major motion picture franchise."
  }
]

Rails.logger.info "Creating publishers..."

publishers = [
  {
    name: "Creative Creator",
    city: "Wrocław",
    description: "Book publishers are responsible for overseeing the selection, production, marketing and distribution processes involved with new works of writing. ..."
  },
  {
    name: "Book publisher",
    city: "Warszawa",
    description: "Book publishers are responsible for overseeing the selection, production, marketing and distribution processes involved with new works of writing. ..."
  },
  {
    name: "Jimmy book",
    city: "Poznań",
    description: "Book publishers are responsible for overseeing the selection, production, marketing and distribution processes involved with new works of writing. ..."
  },
  {
    name: "Book world",
    city: "Łódź",
    description: "Book publishers are responsible for overseeing the selection, production, marketing and distribution processes involved with new works of writing. ..."
  },
  {
    name: "Book wall",
    city: "Kraków",
    description: "Book publishers are responsible for overseeing the selection, production, marketing and distribution processes involved with new works of writing. ..."
  },
  {
    name: "Civil reading",
    city: "Gdańsk",
    description: "Book publishers are responsible for overseeing the selection, production, marketing and distribution processes involved with new works of writing. ..."
  }
]

Rails.logger.info "Creating books..."

genre_ids = Genre.pluck(:id)
if Book.count < 100
  100.times do
    book = books.sample
    author = authors.sample
    publisher = publishers.sample

    Book.create!(
      title: book[:title],
      description: Faker::Lorem.paragraph(5),
      genre_id: genre_ids.sample,
      rating: book[:rating].to_i,
      year_of_release: Date.new(book[:year_of_release].to_i),
      original_language: book[:original_language],
      number_of_pages: book[:number_of_pages],
      translated_into: book[:translated_into],
      author: Author.find_or_create_by!(
        first_name: author[:first_name],
        last_name: author[:last_name],
        rating: author[:rating],
        description: author[:description],
        birth_date: Date.new(author[:birth_date].to_i)
      ),
      publisher: Publisher.find_or_create_by!(
        name: publisher[:name],
        city: publisher[:city],
        description: publisher[:description]
      )
    )
  end
end

# Rails.logger.info "Creating users..."

# 20.times do |i|
#   number = i.zero? ? "" : i + 1
#   name = "user#{number}"
#   email = "#{name}@example.com"
#   next if User.exists?(email: email)
#   User.create!(
#     name: name,
#     email: email,
#     password: "password",
#     confirmed_at: Time.zone.now
#   )
# end

# Rails.logger.info "Creating comments..."

# Book.find_each do |book|
#   next if book.comments.count > 0
#   number_of_comments = rand(User.count)
#   users = User.all.sample(number_of_comments)
#   number_of_comments.times do |number|
#     Comment.create!(
#       description: Faker::Lorem.paragraph(3),
#       book: book,
#       user: users[number]
#     )
#   end
# end

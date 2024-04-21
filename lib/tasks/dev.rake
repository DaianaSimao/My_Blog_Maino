namespace :dev do
  desc "Adiciono tags novas"
  task add_tags: :environment do
    tags = %w( Saúde Bem-estar Beleza Moda Fitness Viagem Fotografia Arte Música Cinema Livros Educação
      Negócios Empreendedorismo Finanças Influenciadores Sustentabilidade Cultura Design Arquitetura
      Gastronomia DIY Carreira Desenvolvimento Pets Tecnologia Gaming Esportes Natureza História Ciência
      Política Ativismo Espiritualidade Relacionamentos Psicologia Humor Notícias Eventos Filantropia 
      Produtividade Viagens Aventuras Estudo Tutoriais Receitas Inspiração)
    tags.each do |tag|
      Tag.create!(
        nome: tag
      )
      puts "Tag '#{tag}' criada com sucesso!"
    end
  end

  desc "Create posts"
  task create_posts: :environment do
    posts = [
      { titulo: "Descubra como pequenas mudanças podem melhorar sua saúde", body: "Descubra como pequenas mudanças na sua rotina diária podem impactar positivamente sua saúde e bem-estar. Desde uma caminhada matinal até momentos de meditação, cada passo conta para uma vida mais equilibrada e saudável.", tags: "Saúde, Bem-estar" },
      { titulo: "Explore a interseção entre beleza e moda", body: "Explore a interseção entre beleza e moda, onde cada peça de roupa e cada produto de beleza são escolhidos para refletir sua personalidade única. Vista-se com confiança e deixe sua beleza interior brilhar através do seu estilo pessoal.", tags: "Beleza, Moda" },
      { titulo: "Transforme seu corpo e mente com atividade física", body: "Transforme seu corpo e sua mente com um compromisso com a atividade física regular. Seja correndo ao ar livre ou praticando ioga em casa, cada movimento fortalece não apenas seus músculos, mas também sua saúde geral.", tags: "Fitness, Saúde" },
      { titulo: "Deixe-se levar pela emoção da aventura", body: "Deixe-se levar pela emoção da aventura enquanto explora novos destinos ao redor do mundo. Das montanhas exuberantes às praias serenas, cada viagem é uma oportunidade para se reconectar consigo mesmo e com o mundo ao seu redor.", tags: "Viagem, Aventura" },
      { titulo: "Capture momentos preciosos e transforme-os em arte", body: "Capture momentos preciosos e transforme-os em obras de arte visuais que contam sua história única. Através da lente da sua câmera, você pode explorar e expressar sua criatividade de maneiras infinitas.", tags: "Fotografia, Arte" },
      { titulo: "Deixe-se envolver pela magia da música e do cinema", body: "Deixe-se envolver pela magia da música e do cinema, onde cada nota e cada cena transportam você para um mundo totalmente novo. Permita-se ser inspirado e emocionado pela poderosa combinação de som e imagem.", tags: "Música, Cinema" },
      { titulo: "Abra as páginas de um livro e embarque em uma jornada de aprendizado", body: "Abra as páginas de um livro e embarque em uma jornada de aprendizado e descoberta. Através da leitura, você pode expandir seus horizontes e cultivar uma mente aberta e curiosa.", tags: "Livros, Educação" },
      { titulo: "Transforme suas paixões em empreendimentos lucrativos", body: "Transforme suas paixões em empreendimentos lucrativos e significativos. Seja você um empreendedor iniciante ou um veterano experiente, cada passo em direção aos seus objetivos de negócios é uma oportunidade para crescimento e sucesso.", tags: "Negócios, Empreendedorismo" },
      { titulo: "Domine os fundamentos das finanças pessoais", body: "Domine os fundamentos das finanças pessoais e assuma o controle do seu futuro financeiro. Com conhecimento e planejamento, você pode construir uma base sólida para a segurança financeira e a liberdade.", tags: "Finanças, Educação" },
      { titulo: "Descubra como os influenciadores moldam tendências", body: "Descubra como os influenciadores estão moldando as tendências e inspirando milhões ao redor do mundo. Através das mídias sociais, suas vozes ressoam e criam impacto em comunidades online e além.", tags: "Influenciadores, Humor" },
      { titulo: "Abraçar um estilo de vida sustentável é mais do que uma tendência", body: "Abraçar um estilo de vida sustentável é mais do que uma tendência; é um compromisso com o futuro do nosso planeta. Ao reconhecer e valorizar a diversidade cultural, podemos construir um mundo mais inclusivo e sustentável para as gerações futuras.", tags: "Sustentabilidade, Cultura" },
      { titulo: "Explore a interseção entre design e arquitetura", body: "Explore a interseção entre design e arquitetura, onde cada espaço é uma expressão de criatividade e funcionalidade. Dos arranha-céus imponentes às casas minimalistas, o design transforma o ambiente ao nosso redor.", tags: "Design, Arquitetura" }
    ]

    posts.each do |post_data|
      tags_data = post_data[:tags].split(", ").map(&:strip)
      tags = []
      tags_data.each do |tag_data|
        tag = Tag.where("nome ILIKE ?", "%#{tag_data}%").first
        puts "Tag '#{tag_data}' não encontrada" if tag.nil?
        tags << tag.id
      end
      user_ids = User.pluck(:id)
      user_ids.each do |user_id|
        post = Post.create!(titulo: post_data[:titulo], body: post_data[:body], user_id: user_id, tag_ids: tags)
      end
    end

    puts "Posts criados com sucesso!"
  end

  desc "Create users and profiles"
  task create_users: :environment do
    users_data = [
      { email: "usuario1@example.com", password: "password123", password_confirmation: "password123" },
      { email: "usuario2@example.com", password: "password456", password_confirmation: "password456" },
      { email: "usuario3@example.com", password: "password789", password_confirmation: "password789" },
      { email: "usuario4@example.com", password: "passwordabc", password_confirmation: "passwordabc" }
    ]

    users_data.each do |user_data|
      user = User.create!(user_data)
      profile_data = {
        user_id: user.id,
        nome: Faker::Name.first_name,
        sobrenome: Faker::Name.last_name,
        bio: Faker::Lorem.sentences(number: 1).join(" ")
      }
      Perfil.create!(profile_data)
    end

    puts "Usuários e perfis criados com sucesso!"
  end
end

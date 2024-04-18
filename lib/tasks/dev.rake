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
end

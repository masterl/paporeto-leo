class Notifications < ActionMailer::Base
  #default from: "redacao@paporeto.com"

  def reader_article_sent (reader_article)
    @reader_article = reader_article

    mail to: "bigodation@gmail.com", subject: 'Artigo do leitor', from: @reader_article.email
  end
end

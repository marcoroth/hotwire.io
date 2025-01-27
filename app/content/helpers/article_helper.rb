module ArticleHelper
  def article_count
    Article.all.size
  end

  def unique_authors_count
    Article.all.map { |article| article.author }.uniq.size
  end
end

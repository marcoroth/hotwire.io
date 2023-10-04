class GitRepo
  def self.path
    if Rails.env.development?
      Rails.root
    else
      Rails.root.join("tmp/hotwire.io")
    end
  end

  def self.exists?
    File.exist?(path.join(".git/index"))
  end

  def self.ensure_cloned
    return true if exists?

    clone!

    exists?
  end

  def self.with_cloned_repo
    raise "Repo not cloned" unless ensure_cloned

    yield if block_given?
  end

  def self.clone!
    `git clone https://marcoroth:#{Rails.application.credentials.github[:pat]}@github.com/marcoroth/hotwire.io tmp/hotwire.io`
    `cd tmp/hotwire.io && git checkout new && cd -`
  end
end

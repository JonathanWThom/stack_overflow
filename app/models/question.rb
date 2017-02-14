class Question < ActiveRecord::Base
  validates :content, :presence => true
  belongs_to :user
  has_many :responses

  def vote(amount)
    current_votes = self.votes
    new_votes = self.votes + amount.to_i
    self.update(:votes => new_votes)
  end
end

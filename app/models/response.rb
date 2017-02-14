class Response <ActiveRecord::Base
  validates :content, :presence => true
  belongs_to :question
  belongs_to :user
  acts_as_votable

  def response_vote(amount)
    current_votes = self.response_votes
    new_votes = self.response_votes + amount.to_i
    self.update(:response_votes => new_votes)

  end
end

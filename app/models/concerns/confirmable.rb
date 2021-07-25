module Confirmable
  extend ActiveSupport::Concern

  include do
    validates :submitted, acceptance: true
    validates :confirmed, acceptance: true

    after_validation :confirming

    private

    def confirming
      if self.submitted == "" && self.errors.keys == [:submitted]
        self.submitted = "1"
      end
      self.submitted = "" if self.confirmed == ""

      errors.delete :submitted
      errors.delete :confirmed
    end
  end
end
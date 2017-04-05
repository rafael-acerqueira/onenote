class TagsNote < ApplicationRecord
  belongs_to :tag, dependent: :destroy
  belongs_to :note, dependent: :destroy

  validates_uniqueness_of :tag, scope: :note
end

class Building < ApplicationRecord
  validates :code, presence: true, numericality: {only_integer: true,
      message: 'Integer only. No alphabets or sign allowed.'}
end

require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'database columns' do
    it { should have_db_column :amount }
    it { should have_db_column :pay_date }
    it { should have_db_column :month }
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }
  end

end

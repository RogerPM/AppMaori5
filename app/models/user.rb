# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string
#  last_name              :string
#  identification_card    :string
#  address                :text
#  birthday               :date
#  phone                  :string
#  contract_date          :date
#  contract_date_end      :date
#  position               :string
#  state                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#

class User < ActiveRecord::Base


  #validates :name , presence: true
  #validates :last_name , presence: true
  #validates :identification_card , presence: true
  #validates :phone , presence: true
  #validates :contract_date , presence: true
  #validates :position , presence: true
  #validates :email , presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end

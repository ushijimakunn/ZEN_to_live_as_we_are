class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :mindfuls

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true, length: { maximum: 255 }

  # 瞑想時間の合計を計算（秒）
  def cal_total_time
    mindfuls = self.mindfuls.all
    total_time = 0
    mindfuls.each do |mindful|
      total_time += mindful.time
    end
    return total_time
  end

  #  連続何日瞑想を行なっているかを計算
  def cal_consecutive_days
    mindfuls = self.mindfuls.all
    consecutive_days = 0
    today = Date.today
    n = 0
    # レコードを回し、連続実施日数を計算
    mindfuls.reverse_each do |mindful|
      if mindful.date == (today-n)
        consecutive_days += 1
        n += 1
      elsif mindful.date == (today-n+1) #前回瞑想時と同じ日の時
        next
      else 
        break
      end
    end
    return consecutive_days
  end

  # 合計日数を計算
  def cal_total_date
    mindfuls = self.mindfuls.all
    array_date = []
    mindfuls.each do |mindful|
      array_date.push(mindful.date)
    end
    total_date = array_date.uniq.size
    return total_date
  end
  
  
end


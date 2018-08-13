class CreatePictures < ActiveRecord::Migration[5.0]
  validates :title, length: {within: 3..20}
  validates :artist, :url, presence: true
  validates :url, uniqueness: true

  def change
    create_table :pictures do |t|
      t.string :artist
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end

#
# artist:
# be present (i.e. not blanks allowed)
# title:
# minimum length 3 characters
# maximum length 20 characters
# url:
# be present (i.e. not blanks allowed)
# be unique

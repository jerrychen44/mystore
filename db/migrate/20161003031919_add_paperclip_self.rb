class AddPaperclipSelf < ActiveRecord::Migration[5.0]
  #copy from paperclip web. ref:https://github.com/thoughtbot/paperclip#usage
  #because I use command rails g paperclip product image alwasy get faild
  #so, add this migration by my self. rails generate migration AddPaperclipSelf
  def up
    add_attachment :products, :image
  end

  def down
    remove_attachment :products, :image
  end
end

class CreateDevs < ActiveRecord::Migration[6.1]
  def change
    create_table :devs do |t|
      t.string :name
    end
    def received_one?(item_name)
      self.freebies.any? do |f|
        f.item_name == item_name
      end
    end
    def give_away(freebie, dev)
      freebie.update(dev: dev) unless freebie.dev != self
    end
  
  end
end

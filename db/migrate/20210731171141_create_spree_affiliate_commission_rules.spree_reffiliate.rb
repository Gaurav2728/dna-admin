# This migration comes from spree_reffiliate (originally 20170210081835)
class CreateSpreeAffiliateCommissionRules < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_affiliate_commission_rules do |t|
      t.references :commission_rule, index: true
      t.references :affiliate, index: true

      t.decimal :rate
      t.decimal :fixed_commission
      t.boolean :active, default: false, null: false, index: true

      t.timestamps null: false
    end
  end
end

class CategoryValidator < ActiveModel::Validator
  def validate(record)
    valid_categories = ["Fiction", "Non-Fiction"]
    unless valid_categories.include?(record.category)
      record.errors[:category] << "Category must be Fiction or Non-Fiction"
    end
  end
end
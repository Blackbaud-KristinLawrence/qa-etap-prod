And(/^I click on run report next to the report Test$/) do
  run = Reports::Editreportscategory.new
  run.run_report
end

And(/^I click on the drop down box for query category Base$/) do
  category = Reports::Editreportscategory.new
  category.select_category_base
end

And(/^I click on the drop down box for query name All Constituents$/) do
  category = Reports::Editreportscategory.new
  category.select_query_all_constituents
end

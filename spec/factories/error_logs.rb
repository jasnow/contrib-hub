# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :error_log do
    message "error message"
    action "custom action"
    backtrace "error chain"
  end
end

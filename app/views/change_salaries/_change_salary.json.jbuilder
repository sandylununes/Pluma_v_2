json.extract! change_salary, :id, :company_id, :collaborator, :cost_center_id, :salary_current, :new_salary, :date_change, :reason_change, :user_id, :status, :created_at, :updated_at
json.url change_salary_url(change_salary, format: :json)

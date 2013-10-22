json.array!(@automodels) do |automodel|
  json.extract! automodel, :name, :id
end
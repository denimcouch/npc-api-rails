class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :is_adventurer, :role
end

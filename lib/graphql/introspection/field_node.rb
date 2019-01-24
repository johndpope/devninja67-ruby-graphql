class GraphQL::Introspection::FieldNode < GraphQL::Node
  field :name,
    type: :string,
    description: "The name of the field"
  field :type,
    type: :string,
    description: "The type of the field"
  field :description,
    type: :string,
    description: "The description of the field"
  field :calls,
    type: :connection,
    description: "Calls available on this field",
    connection_class_name: "GraphQL::Introspection::Connection",
    node_class_name: "GraphQL::Introspection::CallNode"

  def calls
    target.calls.values
  end

  def name
    field_name
  end
end
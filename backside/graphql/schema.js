export const typeDefs = `
type User {
  id: ID!
  firstname: String!
  lastname: String!
  street: String!
  state: String!
  zip: String!
  cellphone: String!
  email: String!
  password: password!
}

type Tag {
  Tag_id: UUID!
  Tag_description: String!
}

type GPU {
  id: ID!
  name: String!
  cost: Float!
  Category: String!
}

type Processor {
  id: String!
  name: String!
  cost: Float!
  Category_name: [Category]!
}

type RAM {
  id: UUID!
  name: String!
  cost: Float!
  Category_name: [Category]!
}


type Storage {
  id: UUID!
  name: String!
  cost: Float!
  Category_name: [Category]!
}

type Selection {
    id: UUID!
    processor: [Processor ID]!
    RAM: [RAM ID!]!
    Storage: [Storage ID!]!
    GPU: [GPU ID!]!
    Type: [Type ID!]!
    Order_Number: String!

}
`;


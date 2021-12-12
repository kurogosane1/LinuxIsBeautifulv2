const { PrismaClient, Prisma } = require("@prisma/client");

const prisma = new PrismaClient();

const tagData = [
  {
    Tag_description: "Laptop",
  },
  {
    Tag_description: "Tablet",
  },
  {
    Tag_description: "Desktop",
  },
  {
    Tag_description: "Phone",
  },
];

// const userData = [
//   {
//     firstname: "John",
//     lastname: "Doe",
//     streetaddress: "1234 somewhere",
//     state: "TX",
//     zipcode: 77777,
//     cellphone: "888-888-8888",
//     email: "jdoe@email.com",
//     password: "123password",
//   },
//   {
//     firstname: "jay",
//     lastname: "leno",
//     streetaddress: "2222 somewhere",
//     state: "NY",
//     zipcode: 11111,
//     cellphone: "888-888-8878",
//     email: "jayl32@gmail.com",
//     password: "password123",
//   },
// ];

const procesorData = [
  {
    // id: "pro-1",
    name: "Core i7 8 core 3.0 ghz",
    cost: 200,
    Tags: {
      connect: {
        Tag_id: "b5c09991-df5d-484a-83f2-7e0df05ebdd3",
      },
    },
  },
  {
    // id: "pro-2",
    name: "Core i9 10 core 2.7ghz",
    cost: 320,
    Tags: {
      connect: {
        Tag_id: "b5c09991-df5d-484a-83f2-7e0df05ebdd3",
      },
    },
  },
  {
    // id: "pro-3",
    name: "Core i7 10 core 3.2 ghz",
    cost: 360,
    Tags: {
      connect: {
        Tag_id: "b5c09991-df5d-484a-83f2-7e0df05ebdd3",
      },
    },
  },
  {
    // id: "pro-4",
    name: "Core i9 14 core 3.0ghz",
    cost: 500,
    Tags: {
      connect: {
        Tag_id: "b5c09991-df5d-484a-83f2-7e0df05ebdd3",
      },
    },
  },
  {
    // id: "tab-1",
    name: "Zues1",
    cost: 200,
    Tags: {
      connect: {
        Tag_id: "083a7fb9-ad25-49ee-a8cf-cc71d963e5c7",
      },
    },
  },
  {
    // id: "Desk-1",
    name: "Zues2-1 12 Core Processor",
    cost: 300,
    Tags: {
      connect: {
        Tag_id: "7ca1b0a7-74b9-4bdc-b25e-ede28de05699",
      },
    },
  },
  {
    // id: "Desk-2",
    name: "Zues2-2 16 Core Processor",
    cost: 700,
    Tags: {
      connect: {
        Tag_id: "7ca1b0a7-74b9-4bdc-b25e-ede28de05699",
      },
    },
  },
  {
    // id: "Desk-4",
    name: "Zues2-2 20 Core Processor",
    cost: 1000,
    Tags: {
      connect: {
        Tag_id: "7ca1b0a7-74b9-4bdc-b25e-ede28de05699",
      },
    },
  },
  {
    // id: "SOC-1",
    name: "M1 Zues Tab",
    cost: 140,
    Tags: {
      connect: {
        Tag_id: "7ca1b0a7-74b9-4bdc-b25e-ede28de05699",
      },
    },
  },
];

async function main() {
  console.log("start seeding ...");
  for (const u of procesorData) {
    const tag = await prisma.processor.create({
      data: u,
    });
    console.log(`Created tag with id: ${tag.id}`);
  }
  //   const check = await prisma.processor.create({ data: proccesorData });
  console.log(check);
  console.log(`Seeding finished`);
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });

const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

export const resolvers = {
    Query: {
        test: () => {
            return prisma.users.findMany();
        }
    }
}
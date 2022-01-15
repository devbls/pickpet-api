module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'e91b851653582d9eb004f25f1556fb7f'),
  },
});

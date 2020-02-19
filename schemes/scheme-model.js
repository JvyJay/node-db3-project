const db = require('../data/dbConfig.js');

module.exports = {
  find,
  findById,
  findSteps,
  add,
  remove
};

function find() {
  return db('schemes');
}

function findById(id) {
  return db('schemes')
    .where({ id })
    .first();
}

function add(scheme) {
  return db('schemes').insert(scheme, 'id');
}

function remove(id) {
  return db('schemes')
    .where({ id })
    .del();
}

function findSteps(id) {
  return db('steps as s')
    .join('schemes as p', 'p.id', 's.scheme_id')
    .select('s.instructions', 'p.scheme_name as saidBy')
    .where('scheme_id', id);
}

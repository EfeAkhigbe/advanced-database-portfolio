
db.collection.find({
  department: "Computer Science"
});


db.collection.find({
  "courses.score": { $gt: 80 }
});

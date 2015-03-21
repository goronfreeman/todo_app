user_attr = {
  email: 'test@test.com',
  password: 'password',
  password_confirmation: 'password'
}

user = User.new(user_attr)
user.save!

# Create tasks
# Not completed
task_one = user.tasks.build(name: 'Thing one', complete: false)
task_one.save!

task_two = user.tasks.build(name: 'Thing two', complete: false)
task_two.save!

task_three = user.tasks.build(name: 'Thing three', complete: false)
task_three.save!

task_four = user.tasks.build(name: 'Thing four', complete: false)
task_four.save!

task_five = user.tasks.build(name: 'Thing five', complete: false)
task_five.save

task_six = user.tasks.build(name: 'Thing six', complete: false)
task_six.save!

task_seven = user.tasks.build(name: 'Thing seven', complete: false)
task_seven.save!

task_eight = user.tasks.build(name: 'Thing eight', complete: false)
task_eight.save!

task_nine = user.tasks.build(name: 'Thing nine', complete: false)
task_nine.save!

task_ten = user.tasks.build(name: 'Thing ten', complete: false)
task_ten.save!

# Completed
task_one = user.tasks.build(name: 'Done one', complete: true)
task_one.save!

task_two = user.tasks.build(name: 'Done two', complete: true)
task_two.save!

task_three = user.tasks.build(name: 'Done three', complete: true)
task_three.save!

task_four = user.tasks.build(name: 'Done four', complete: true)
task_four.save!

task_five = user.tasks.build(name: 'Done five', complete: true)
task_five.save!

task_six = user.tasks.build(name: 'Done six', complete: true)
task_six.save!

task_seven = user.tasks.build(name: 'Done seven', complete: true)
task_seven.save!

task_eight = user.tasks.build(name: 'Done eight', complete: true)
task_eight.save!

task_nine = user.tasks.build(name: 'Done nine', complete: true)
task_nine.save!

task_ten = user.tasks.build(name: 'Done ten', complete: true)
task_ten.save!

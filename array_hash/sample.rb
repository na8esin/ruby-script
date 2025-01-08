require 'securerandom'

students = [{
  id: 'bbb'
}]

results = {
  student_groups: [
    {
      id: SecureRandom.uuid,
      students: [
        {
          id: 'aaa'
        },
        {
          id: 'bbb'
        },
      ]
    },
    {
      id: SecureRandom.uuid,
      students: [
        {
          id: 'ccc'
        },
        {
          id: 'ddd'
        },
      ]
    },
  ]
}

student_groups = results[:student_groups]

student_groups.each_with_index do |sg, idx|
  p idx, sg
  sg[:students].each do |s|
    p s[:id]

    found = students.find do |student|
      student[:id] == s[:id]
    end
    p found
    s[:flag] = !found.nil?
  end
end

pp student_groups

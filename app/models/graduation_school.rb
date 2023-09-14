class GraduationSchool < ActiveHash::Base
  self.data = [
   { id: 1, name: '---' },
   { id: 2, name: '千葉県立東葛飾高等学校' },
   { id: 3, name: '千葉県立東葛飾中学校' },
   { id: 4, name: 'その他' }
 ]
 
 include ActiveHash::Associations
 has_many :users
 
 end
 
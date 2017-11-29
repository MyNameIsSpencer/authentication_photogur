class User
  def authenticate?(password)
    stored_salt = password_digest(0..3)
    hash_salted_password = password_digest(4..*)

    hash(password, stored_salt) == hash_salted_password
    # hash(password, self.salt) == self.hash_salted_password
    # password == decrypt(self.encrypted_password)
    # self.password == password
  end
end

submitted_email     = params[:email]
submitted_password  = params[:password]

u = User.find_by(email: submitted_email)

if u.authenticate?(submitted_password)

  # u.password == submitted_password

else

end

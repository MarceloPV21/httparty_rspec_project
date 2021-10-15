describe 'Grouping GET methods' do
 
    it 'my first test - displaying users' do
        @users = User.get('/api/users?page=2')
        #puts @users
        expect(@users.code).to eq(200)
    end

    it 'get single user' do
        @user = User.get('/api/users/2')
        expect(@user.code).to eq(200)
        expect(@user['data']['id']).to eq(2)
        expect(@user['data']['first_name']).to eq("Janet")
    end

  
 end
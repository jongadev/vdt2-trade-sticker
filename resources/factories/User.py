def factory_user(target):
    data = {

        'login':{
            'email':'papito@gmail.com',
            'password':'vaibrasil',
        },

        'Incorrect_password':{
            'email':'papito@gmail.com',
            'password':'abc123',
        },

        'Password_not_informed':{
            'email':'papito@gmail.com',
            'password':'',
        },

        'Email_not_informed':{
            'email':'',
            'password':'vaibrasil',
        },

        'Email_and_password_not_provided':{
            'email':'',
            'password':''
        }
    }
    return data[target]       

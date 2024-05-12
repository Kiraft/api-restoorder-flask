from flask import Blueprint, request
import os
from validators.validators import parsed_respond, has_error_msg, check_args
from src.users.infrastructure.users_controller import UserController

auth: Blueprint = Blueprint(name='auth', import_name= __name__)

@auth.route('%s%s/%s' % (os.getevn('API_PATH'), os.getevn('API_VERSION'),  'user/login'), methods=["GET"])
def validar_usuario():

    try:
        check_args(['username','password'], request.args)

        _userCL = UserController()
        data = _userCL.validar_usuario(request.args['username'], request.args['password'])
        return parsed_respond(data)

    except Exception as err:
        return has_error_msg(err)
    

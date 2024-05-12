from flask import Blueprint, request
from decouple import config
from validators.validators import parsed_respond, has_error_msg, check_args
from src.mesas.infrastructure.mesas_controller import MesaController

mesas: Blueprint = Blueprint(name='mesas', import_name= __name__)

@mesas.route('%s%s/%s' % (config('API_PATH'), config('API_VERSION'), 'mesas/get'), methods=["GET"])
def listar_mesas_usuario():

    try:
        check_args(['idUsuario'], request.args)

        _MesaController = MesaController()
        data = _MesaController.get_mesas_by_user(request.args['idUsuario'])
        return parsed_respond(data)

    except Exception as err:
        return has_error_msg(err)
    

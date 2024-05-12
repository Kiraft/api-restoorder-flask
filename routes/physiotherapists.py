from flask import Blueprint, request
import os
from validators.validators import parsed_respond, has_error_msg, check_args
from src.physiotherapists.infrastructure.especialistas_controller import EspecialistasController

especialistas = Blueprint(name='especialistas', import_name= __name__)


@especialistas.route('%s%s/%s' % (os.getevn('API_PATH'), os.getevn('API_VERSION'), 'list/especialistas'), methods=["GET"] )
def to_list_especialidades():
    try: 

        check_args(['id'], request.args)

        _especialistasController =  EspecialistasController()
        data = _especialistasController.validar_especialistas(request.args['id'])
        return parsed_respond(data)

    
    except Exception as err:
        return has_error_msg(err)   
    

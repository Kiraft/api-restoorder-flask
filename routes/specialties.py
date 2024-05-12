from flask import Blueprint
from decouple import config
from validators.validators import parsed_respond, has_error_msg
from src.specialties.infrastructure.especialidades_controller import SpecialtiesController

specialties = Blueprint(name='specialties', import_name= __name__)


@specialties.route('%s%s/%s' % (config('API_PATH'), config('API_VERSION'), 'list/specialties'), methods=["GET"] )
def to_list_specialties():
    try: 
        _specialtiesController =  SpecialtiesController()
        data = _specialtiesController.validar_specialties()
        return parsed_respond(data)
    
    except Exception as err:
        return has_error_msg(err)   
from flask import Flask, request, json, jsonify, send_from_directory
import json
# from flask_api import status

# Esta funcion retorna la data agregando el status y el messenger
def parsed_respond(data):
    temp = {
        'data': data,
        'status': True,
        'message': 'ok'
    }
    return jsonify(temp)


# esta funcion regresa la estructura de un json si encuentra un error al momento de consultar la api
def has_error_msg(err):
    temp = {
        'message': str(err),
        'status': False
    }

    return jsonify(temp), 400

def check_args(list, argsx):
    for item in list:
        if item in argsx:
            pass
        else:
            temp = '''No se encuentra el argumento: %s''' % (item)
            raise Exception(temp)


def inspect_cred(hds):
    raw_bearer_token = hds.get('Authorization')
    if raw_bearer_token:
        els = raw_bearer_token.split(' ')
        bearer_token = els[1]
        return bearer_token
    else:
        raise Exception("Requiere autentificación")

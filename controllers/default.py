# -*- coding: utf-8 -*-
# this file is released under public domain and you can use without limitations

#########################################################################
## This is a sample controller
## - index is the default action of any application
## - user is required for authentication and authorization
## - download is for downloading files uploaded in the db (does streaming)
## - call exposes all registered services (none by default)
#########################################################################

import asyncore
#from TaskMaster import TaskMaster
#import HeadNode
from time import sleep
import logging
#import pymysql
import random
import re
import sys

def index():
    """
    example action using the internationalization operator T and flash
    rendered by views/default/index.html or views/generic.html

    if you need a simple wiki simply replace the two lines below with:
    return auth.wiki()
    """
    response.flash = T("Welcome to web2py!")
    return dict(message=T('Hello World'))


def user():
    """
    exposes:
    http://..../[app]/default/user/login
    http://..../[app]/default/user/logout
    http://..../[app]/default/user/register
    http://..../[app]/default/user/profile
    http://..../[app]/default/user/retrieve_password
    http://..../[app]/default/user/change_password
    http://..../[app]/default/user/manage_users (requires membership in
    use @auth.requires_login()
        @auth.requires_membership('group name')
        @auth.requires_permission('read','table name',record_id)
    to decorate functions that need access control
    """
    return dict(form=auth())

@cache.action()
def download():
    """
    allows downloading of uploaded files
    http://..../[app]/default/download/[filename]
    """
    return response.download(request, db)


def call():
    """
    exposes services. for example:
    http://..../[app]/default/call/jsonrpc
    decorate with @services.jsonrpc the functions to expose
    supports xml, json, xmlrpc, jsonrpc, amfrpc, rss, csv
    """
    return service()


@auth.requires_signature()
def data():
    """
    http://..../[app]/default/data/tables
    http://..../[app]/default/data/create/[table]
    http://..../[app]/default/data/read/[table]/[id]
    http://..../[app]/default/data/update/[table]/[id]
    http://..../[app]/default/data/delete/[table]/[id]
    http://..../[app]/default/data/select/[table]
    http://..../[app]/default/data/search/[table]
    but URLs must be signed, i.e. linked with
      A('table',_href=URL('data/tables',user_signature=True))
    or with the signed load operator
      LOAD('default','data.load',args='tables',ajax=True,user_signature=True)
    """
    return dict(form=crud())

@auth.requires_login()
def manage():
    table = request.args(0)
    if not table in db.tables():
        redirect(URL('error'))
    grid = SQLFORM.grid(db[table], args=request.args[:1])
    return locals()

#def manage():
#    grid = SQLFORM.smartgrid(db.machine, linked_tables=['platform'])
#    return dict(grid=grid)

@auth.requires_login()
def machine_dash():
    grid = SQLFORM.grid(db.machine,
                        left=[db.worker.on(db.machine.id==db.worker.machine_id)],
                              #db.worker_stats.on(db.worker.id==db.worker_stats.worker_id)],
                        fields=[db.machine.name,
                                db.machine.ip,
                                db.machine.port,
                                db.machine.alive,
                                db.machine.platform_id,
                                db.worker.miner_id,
                                db.worker.time_start,
                                db.worker.time_stop],
                                #db.worker_stats.hash_avg,
                                #db.worker_stats.timestamp],
                        headers={'machine.name'           : 'Machine name',
                                 'machine.ip'             : 'IP',
                                 'machine.platform_id'    : 'Platform',
                                 'worker.miner_id'        : 'Miner',
                                 'worker.time_start'      : 'Started at',
                                 'worker.time_stop'       : 'Stopped at'},
                                 #'worker_stats.hash_avg'  : 'Avg. hash rate (MH/s)',
                                 #'.worker_stats.timestamp': 'Time'},
                        maxtextlength=50,
                        csv=False,
                        details=False,
                        deletable=False,
                        editable=False)
    return locals()

@auth.requires_login()
def machine_dash_2():
    mach_id = request.args(0)
    if(mach_id == None):
        return dict(rows = db(db.machine).select(db.machine.name,
                                             db.machine.ip,
                                             db.machine.port,
                                             db.machine.alive,
                                             db.platform.os,
                                             db.platform.type,
                                             db.platform.arch,
                                             db.miner.name,
                                             db.miner.version,
                                             db.worker.time_start,
                                             db.worker.time_stop,
                                             #db.miner.timestamp.max(),
                                             left=[db.worker.on(db.machine.id==db.worker.machine_id),
                                                   db.platform.on(db.machine.platform_id==db.platform.id),
                                                   db.miner.on(db.worker.miner_id==db.miner.id)]))
                                                   #db.worker_stats.on(db.worker.id==db.worker_stats.worker_id)]
                                             #groupby=db.machine.name | db.machine.ip | db.machine.port | db.machine.alive | db.machine.platform_id | db.worker.miner_id | db.worker.time_start | db.worker.time_stop)
    else:
        return dict(rows = db(db.machine.id==mach_id).select(db.machine.name,
                                             db.machine.ip,
                                             db.machine.port,
                                             db.machine.alive,
                                             db.platform.os,
                                             db.platform.type,
                                             db.platform.arch,
                                             db.miner.name,
                                             db.miner.version,
                                             db.worker.time_start,
                                             db.worker.time_stop,
                                             #db.miner.timestamp.max(),
                                             left=[db.worker.on(db.machine.id==db.worker.machine_id),
                                                   db.platform.on(db.machine.platform_id==db.platform.id),
                                                   db.miner.on(db.worker.miner_id==db.miner.id)]))

def send_task():
    #print 'inicializa el TaskMaster'
    #connector = TaskMaster(addr)
    connector = TaskMaster(('127.0.0.1',58042))
    #print 'TaskMaster manda el comando: ' + str(task)
    connector.send_command('test 1')
    asyncore.loop()
    #print 'CALLBACK:' + 
    connector.get_callback()

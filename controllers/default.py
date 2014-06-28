# -*- coding: utf-8 -*-
# this file is released under public domain and you can use without limitations
from datetime import *
from time import sleep
import logging
#import pymysql
import random
import re
import sys
now = datetime.strptime(datetime.now().strftime('%Y/%m/%d %H:%M:%S'), '%Y/%m/%d %H:%M:%S')

@auth.requires_login()
def index():
    """
    example action using the internationalization operator T and flash
    rendered by views/default/index.html or views/generic.html

    if you need a simple wiki simply replace the two lines below with:
    return auth.wiki()
    """
    response.flash = T("Welcome to web2py!")
    return dict(message=T('Hello World'))

def total_hashes():
    rows = db.executesql('SELECT c.name, SUM(ws1.hash_avg) hash_sum FROM currency c, miner m, worker w, worker_stats ws1,	(SELECT worker_id, MAX(hash_count) hash_count FROM worker_stats GROUP BY worker_id) ws2 WHERE (w.time_stop IS NULL OR w.time_stop>NOW()) AND ws1.worker_id = w.id AND m.id = w.miner_id AND c.id = m.currency_id AND ws1.hash_count = ws2.hash_count AND ws1.worker_id = ws2.worker_id AND ws1.hash_avg != 0 GROUP BY c.name', as_dict=True) #, colnames=[db.currency.name, db.worker_stats.hash_avg]
    total_bitcoin = None
    total_litecoin= None
    print rows
    for row in rows:
        print row
        if row['name'] == 'Bitcoin':
            total_bitcoin = row['hash_sum']
        elif row['name'] == 'LiteCoin':
            total_litecoin = row['hash_sum']
        #print row['name'] , ': ' , row['hash_sum']
    return locals


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

def workers_active():
    #workers = db().select(db.worker.ALL)
    grid = SQLFORM.smartgrid(db.worker, create=False, editable=False, deletable=True)
    return locals()

def donut():
    online_query = db(db.machine.alive=='T')
    online = online_query.count()
    if not online:
        online = 0
    rows = db((db.worker.time_stop == None) | (db.worker.time_stop > now)).select(db.worker.ALL, distinct=True)
    mining = 0
    for row in rows:
        mining += 1
    online -= mining
    offline = db(db.machine.alive=='F').count()
    if not offline:
        offline = 0
    total = db(db.machine).count()
    other = total - online - offline - mining
    
    tlist = []
    elem1 = {}
    elem1['label'] = 'online-idle'
    elem1['value'] = online
    tlist.append(elem1)
    elem2 = {}
    elem2['label'] = 'offline'
    elem2['value'] = offline
    tlist.append(elem2)
    elem3 = {}
    elem3['label'] = 'online-mining'
    elem3['value'] = mining
    tlist.append(elem3)
    elem4 = {}
    elem4['label'] = 'other'
    elem4['value'] = other
    tlist.append(elem4)
    return dict(rows = tlist)

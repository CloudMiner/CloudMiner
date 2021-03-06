# coding: utf8

@auth.requires_login()
def index(): return dict(message=T('Hello World'))

@auth.requires_login()
def data():
    query  = (db.machine)
    count  = db.machine.id.count()
    result = db(query).select(db.machine.name, count, groupby=db.machine.id)

    tlist = []
    for item in result:        
        elem = {}
        elem['count'] = item[count]    # <-- note the syntax
        elem['name'] = item.machine.name
        tlist.append(elem)

    return dict(rows = tlist)

@auth.requires_login()
def data1():
    query  = (db.worker_stats.worker_id == 50)
    result =  db(query).select(db.worker_stats.timestamp, db.worker_stats.hash_rate)
    return dict(rows = result)


from datetime import *
now = datetime.strptime(datetime.now().strftime('%Y/%m/%d %H:%M:%S'), '%Y/%m/%d %H:%M:%S')

def index(): return dict(message=T('Hello World'))

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

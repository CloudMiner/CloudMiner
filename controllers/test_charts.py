# coding: utf8
# intente algo como
from datetime import *
now = datetime.strptime(datetime.now().strftime('%Y/%m/%d %H:%M:%S'), '%Y/%m/%d %H:%M:%S')

def index():
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
    return locals()

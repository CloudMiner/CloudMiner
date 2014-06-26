# coding: utf8
from gluon.tools import Service
service = Service()

def call():
    session.forget()
    return service()

@auth.requires_login()
def index(): return dict(message=T('Hello World'))

@service.json
def get_hashes():
    result = db.executesql('SELECT ma.name, c.name as currency, ws1.worker_id, ws1.hash_rate, ws1.hash_avg FROM machine ma, currency c, miner m, worker w, worker_stats ws1, (SELECT worker_id, MAX(hash_count) hash_count FROM worker_stats GROUP BY worker_id) ws2 WHERE (w.time_stop IS NULL OR w.time_stop>NOW()) AND ws1.worker_id = w.id AND m.id = w.miner_id AND c.id = m.currency_id AND ws1.hash_count = ws2.hash_count AND ws1.worker_id = ws2.worker_id AND ws1.hash_avg != 0 AND ma.id = w.machine_id ORDER BY ma.name', as_dict=True)
    tlist = []
    for item in result:  
        rate = 0
        unit = ''
        if item['hash_rate'] >= 1000:
            rate = item['hash_rate'] / 1000
            unit = 'GH/s'
        elif item['hash_rate'] > 0.1:
            rate = item['hash_rate']
            unit = 'MH/s'
        else :
            rate = item['hash_rate'] * 1000
            unit = 'KH/s'
        tlist.append(str(round(rate,2)) + ' ' + unit)

    return dict(rows = tlist)

@service.json
def get_grouped_hashes():
    result = db.executesql('SELECT timestamp, SUM(hash_rate) hash_sum FROM (SELECT DATE_ADD(ws1.timestamp, INTERVAL -(second(time(ws1.timestamp)) - (second(time(ws1.timestamp)) DIV 10 * 10)) second) timestamp, ws1.hash_rate FROM currency c, miner m, worker w, worker_stats ws1 WHERE (w.time_stop IS NULL OR w.time_stop>NOW()) AND ws1.worker_id = w.id AND m.id = w.miner_id AND c.id = m.currency_id AND ws1.hash_avg != 0 AND c.name = \'BitCoin\') t1 GROUP BY timestamp ORDER BY timestamp', as_dict=True)

    dict1 = {}
    for item in result: 
        list1 = []
        for i in range(3):
            list1.append(0)

        k = str(item['timestamp'])
        if k in dict1.keys():
            list1 = dict1[k]
            list1[0] = item['hash_sum']
        else:
            list1[0] = item['hash_sum']
            dict1[k] = list1

    return dict1


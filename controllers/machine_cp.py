# coding: utf8
# intente algo como
@auth.requires_login()
def index(): #return dict(message="hello from machine_cp.py")
    if not request.args:
        query = db.machine
    else:
        query = db.machine.id==request.args[0]
    return dict(rows = db(query).select(db.machine.id,
                                        db.machine.name,
                                             db.machine.ip,
                                             db.machine.port,
                                             db.machine.alive,
                                             db.platform.os,
                                             db.platform.type,
                                             db.platform.arch,
                                             db.miner.id,
                                             db.miner.name,
                                             db.miner.version,
                                             db.worker.id,
                                             db.worker.time_start,
                                             db.worker.time_stop,
                                             db.worker.tested,
                                             #db.miner.timestamp.max(),
                                             left=[db.worker.on(db.machine.id==db.worker.machine_id),
                                                   db.platform.on(db.machine.platform_id==db.platform.id),
                                                   db.miner.on(db.worker.miner_id==db.miner.id)],
                                             orderby=db.machine.name | ~db.machine.alive | ~db.worker.time_start))

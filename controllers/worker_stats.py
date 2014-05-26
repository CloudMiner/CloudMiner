def index():
    #workers = db().select(db.worker.ALL)
    grid = SQLFORM.grid(db.worker_stats,
                             fields = [db.worker_stats.worker_id,db.worker_stats.hash_rate,db.worker_stats.hash_avg,db.worker_stats.timestamp],
                             headers = {'worker_stats.worker_id': 'Worker name',
                                       'worker_stats.hash_rate': 'Hash rate',
                                       'worker_stats.hash_avg': 'Hash average',
                                       'worker_stats.timestamp': 'Time stamp' },
                             searchable=False, create=False, editable=False, deletable=False, details=False, csv=False)
    return locals()

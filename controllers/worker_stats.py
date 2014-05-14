def index():
    #workers = db().select(db.worker.ALL)
    grid = SQLFORM.smartgrid(db.worker_stats, create=False, editable=False, deletable=True)
    return locals()

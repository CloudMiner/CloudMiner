@auth.requires_login()
def index():
    if not request.args(0):
        session.error_message = 'MANAGE should be called with appropiate parameters, check manual for further info'
        redirect(URL(c='error'))
    table = request.args(0)
    if not table in db.tables():
        session.error_message = 'MANAGE: table \'' + table + '\' not in DDBB'
        redirect(URL(c='error'))
    elif table == 'worker_stats':
        session.error_message = 'MANAGE: table \'worker_stats\' not available for management'
        redirect(URL(c='error'))
    grid = SQLFORM.grid(db[table], args=request.args[:1])
    return locals()

#def manage():
#    grid = SQLFORM.smartgrid(db.machine, linked_tables=['platform'])
#    return dict(grid=grid)

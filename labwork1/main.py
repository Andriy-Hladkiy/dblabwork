from cassandra import ConsistencyLevel
from cassandra.query import SimpleStatement
from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('laba1')

fileList = ['drop.cql', 'create.cql', 'work.cql']

for file in fileList:
    with open(file, mode='r') as f:
        txt = f.read()
        stmts = txt.split(';')
        for i in stmts:
            stmt = i.strip()
            if stmt != '':
                print(f'Executing {stmt}')
                if file == 'drop.cql':
                    query = SimpleStatement(stmt, consistency_level=ConsistencyLevel.QUORUM)
                elif file == 'create.cql':
                    query = SimpleStatement(stmt, consistency_level=ConsistencyLevel.ALL)
                else:
                    query = SimpleStatement(stmt, consistency_level=ConsistencyLevel.ONE)
                connection.execute(query)
                print(f'{stmt} - done')

#include <iostream>
#include <FDBusServer.h>
#include <CFdbContext.h>

static CBaseWorker main_worker;

int main(int argc, char* argv[])
{

    FDB_CONTEXT->start();

    // start worker
    main_worker.start();

    const char *server_name = "qf-fdb-service";
    std::string url("svc://");
    url += server_name;

    CBaseWorker *worker_ptr = &main_worker;
    FDBusServer *qf_fdb_server = new FDBusServer(server_name, worker_ptr);
    qf_fdb_server->bind(url.c_str());

    main_worker.join();
    
    return 0;
}
#include <CFdbContext.h>
#include <FDBusClient.h>

static CBaseWorker main_worker;

int main(int argc, char* argv[])
{
    FDB_CONTEXT->start();

    main_worker.start();

    CBaseWorker *main_worker_ptr = &main_worker;

    const char *server_name = "qf-fdb-service";
    std::string url("svc://");
    url += server_name;

    FDBusClient *client = new FDBusClient(server_name, main_worker_ptr);
    client->enableReconnect(true);
    client->connect(url.c_str());

    main_worker.join();

    return 0;
}
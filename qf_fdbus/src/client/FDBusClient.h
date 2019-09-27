#ifndef FDBUSCLIENT_H_
#define FDBUSCLIENT_H_

#include <CFdbContext.h>
#include <CBaseClient.h>

class FDBusClient : public CBaseClient {
public:
    FDBusClient(const char *server_name, CBaseWorker *worker = 0);
protected:
    void onOnline(FdbSessionId_t sid, bool is_first);
    void onOffline(FdbSessionId_t sid, bool is_last);
    void onBroadcast(CBaseJob::Ptr &msg_ref);
    void onInvoke(CBaseJob::Ptr &msg_ref);
    void onReply(CBaseJob::Ptr &msg_ref);
    void onStatus(CBaseJob::Ptr &msg_ref, int32_t error_code, const char *description);
};

#endif
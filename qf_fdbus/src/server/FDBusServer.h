#ifndef FDBUSSERVER_H_
#define FDBUSSERVER_H_

#include <CBaseServer.h>
#include <CMethodLoopTimer.h>

class FDBusServer;

// broadcast timer
class CBroadcasterTimer : public CMethodLoopTimer<FDBusServer> {
public:
    CBroadcasterTimer(FDBusServer *server);
    CBroadcasterTimer(int32_t interval, FDBusServer *server, CMethodLoopTimer<FDBusServer>::M method);

};

class FDBusServer : public CBaseServer {
public:
    FDBusServer(const char* server_name, CBaseWorker *worker);

    void broadcast_2s(CMethodLoopTimer<FDBusServer> *timer);
    void broadcast_5s(CMethodLoopTimer<FDBusServer> *timer);

protected:
    void onOnline(FdbSessionId_t sid, bool is_first);

    void onOffline(FdbSessionId_t sid, bool is_last);

    void onSubscribe(CBaseJob::Ptr &msg_ref);
    
    void onInvoke(CBaseJob::Ptr &msg_ref);

    void onStatus(CBaseJob::Ptr &msg_ref, int32_t error_code, const char *description);

private:
    CBroadcasterTimer *timer_2s;
    CBroadcasterTimer *timer_5s;
};


#endif
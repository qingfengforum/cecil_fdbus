#include <FDBusServer.h>
#include <iostream>

using namespace std;

// broadcast timer
CBroadcasterTimer::CBroadcasterTimer(int32_t interval, FDBusServer *server, CMethodLoopTimer<FDBusServer>::M method)
        : CMethodLoopTimer<FDBusServer>(interval, true, server, method) {}
        
CBroadcasterTimer::CBroadcasterTimer(FDBusServer *server)
        : CMethodLoopTimer<FDBusServer>(1000, true, server,  &FDBusServer::broadcast_2s){}


FDBusServer::FDBusServer(const char* server_name, CBaseWorker *worker) :
    CBaseServer(server_name, worker)
{
    timer_2s = new CBroadcasterTimer(2000, this, &FDBusServer::broadcast_2s);
    timer_2s->attach(worker, false);
    timer_5s = new CBroadcasterTimer(5000, this, &FDBusServer::broadcast_5s);
    timer_5s->attach(worker, false);
}


void FDBusServer::broadcast_2s(CMethodLoopTimer<FDBusServer> *timer)
{
    printf("== 2s timer ==\n");
    string str_b("== 2s timer ==");
    this->broadcast(1, "", str_b.c_str(), str_b.size());
}

void FDBusServer::broadcast_5s(CMethodLoopTimer<FDBusServer> *timer)
{
    printf("== 5s timer ==\n");
    string str_b("== 5s timer ==");
    this->broadcast(2, "", str_b.c_str(), str_b.size());

}

void FDBusServer::onOnline(FdbSessionId_t sid, bool is_first)
{
    printf("client is on line (sid:%u)\n", sid);
    if (is_first)
    {
        timer_2s->enable();
        timer_5s->enable();
    }
}

void FDBusServer::onOffline(FdbSessionId_t sid, bool is_last)
{
    if (is_last)
    {
        timer_2s->disable();
        timer_5s->disable();
    }
}

void FDBusServer::onSubscribe(CBaseJob::Ptr &msg_ref)
{
    printf(" == onSubscribe == \n");
    CFdbMessage *msg = castToMessage<CFdbMessage *>(msg_ref);
    const ::NFdbBase::FdbMsgSubscribeItem *sub_item;
    /* iterate all message id subscribed */
    FDB_BEGIN_FOREACH_SIGNAL(msg, sub_item)
    {
        // get msg code
        FdbMsgCode_t msg_code = sub_item->msg_code();

        // get filter
        const char *filter = "";
        if (sub_item->has_filter())
        {
            filter = sub_item->filter().c_str();
        }
        // get session id
        FdbSessionId_t sid = msg->session();

        printf("message %d, filter %s of session %d is registered!\n", msg_code, filter, sid);
        
        /* reply initial value to the client subscribing the message id*/
        // use msg->broadcast();

    }
    FDB_END_FOREACH_SIGNAL()
}

void FDBusServer::onInvoke(CBaseJob::Ptr &msg_ref)
{
    CFdbMessage *msg = castToMessage<CFdbMessage *>(msg_ref);
    printf("msg->code: %u\n", msg->code());
    printf("payloadsize: %u\n", msg->getPayloadSize());
    printf("msg->payloadBuffer: %s\n", msg->getPayloadBuffer());
    cout << endl;

    string str_reply("received your request");
    msg->reply(msg_ref, str_reply.c_str(), str_reply.size());

    string str_ivk("give me some cake");
    invoke(3, str_ivk.c_str(), str_ivk.size());
}

void FDBusServer::onStatus(CBaseJob::Ptr &msg_ref, int32_t error_code, const char *description)
{
    printf("\n === onStatus == \n");
    
}
#include <FDBusClient.h>
#include <iostream>

using namespace std;

FDBusClient::FDBusClient(const char *server_name, CBaseWorker *worker) :
    CBaseClient(server_name, worker)
{

}

void FDBusClient::onOnline(FdbSessionId_t sid, bool is_first)
{
    printf("server online\n");

    /* send request without reply */
    string str_send("hello,(no need reply)");
    this->send(1, str_send.c_str(), str_send.size());

    /* sync - request (donot no how to use it)*/
    // string str_sync("hello (sync request)");
    // CBaseJob::Ptr msg_ref = new CBaseJob();
    // invoke(msg_ref, str.c_str(), str.size());

    /* async - request */
    string str("hello (async request).");
    this->invoke(2, str.c_str(), str.size());

    /* subscribe informations */
    NFdbBase::FdbMsgSubscribe subscribe_list;
    this->addNotifyItem(subscribe_list, 1);
    this->addNotifyItem(subscribe_list, 2);
    this->subscribe(subscribe_list);
}

void FDBusClient::onOffline(FdbSessionId_t sid, bool is_last)
{
    printf("server offline\n");
}

void FDBusClient::onBroadcast(CBaseJob::Ptr &msg_ref)
{
    printf("handle server broadcast infomations \n");
    CFdbMessage *msg = castToMessage<CFdbMessage *>(msg_ref);
    switch(msg->code())
    {
        case 1:
            {
                printf("\n 2s: %s\n", msg->getPayloadBuffer());
            }
            break;
        case 2:
            {
                printf("\n 5s: %s\n", msg->getPayloadBuffer());
            }
            break;
    }
}

void FDBusClient::onReply(CBaseJob::Ptr &msg_ref)
{
    CFdbMessage *msg = castToMessage<CFdbMessage *>(msg_ref);
    printf("\nserver repled: \n");
    printf("msg->code: %u \n", msg->code());
    printf("payloadsize: %u\n", msg->getPayloadSize());
    printf("msg->payloadBuffer: %s\n", msg->getPayloadBuffer());
}

void FDBusClient::onInvoke(CBaseJob::Ptr &msg_ref)
{
    CFdbMessage *msg = castToMessage<CFdbMessage *>(msg_ref);
    printf("\n === onInvoke == \n");
    printf("msg->code: %u \n", msg->code());
    printf("payloadsize: %u\n", msg->getPayloadSize());
    printf("msg->payloadBuffer: %s\n", msg->getPayloadBuffer());
}

void FDBusClient::onStatus(CBaseJob::Ptr &msg_ref, int32_t error_code, const char *description)
{
    printf("\n === onStatus == \n");
}
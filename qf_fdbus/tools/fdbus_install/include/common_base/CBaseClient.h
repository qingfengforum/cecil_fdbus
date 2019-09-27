/*
 * Copyright (C) 2015   Jeremy Chen jeremy_cz@yahoo.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _CBASECLIENT_H_
#define _CBASECLIENT_H_

#include <string>
#include "CFdbSessionContainer.h"
#include "common_defs.h"
#include "CBaseEndpoint.h"
#include "CMethodJob.h"

class CBaseClient;
class CBaseWorker;
class CFdbSession;
namespace NFdbBase {
    class FdbMsgAddressList;
}

class CClientSocket : public CFdbSessionContainer
{
public:
    CClientSocket(CBaseClient *owner
                  , FdbSocketId_t skid
                  , CClientSocketImp *socket);
    ~CClientSocket();
    CFdbSession *connect();
    void getSocketInfo(CFdbSocketInfo &info);
    void setSocket(CClientSocketImp *skt)
    {
        mSocket = skt;
    }
    CClientSocketImp *getSocket()
    {
        return mSocket;
    }
    void disconnect();
protected:
    void onSessionDeleted(CFdbSession *session);
private:
    CClientSocketImp *mSocket;
};

class CBaseClient : public CBaseEndpoint
{
public:
    CBaseClient(const char *name, CBaseWorker *worker = 0);
    virtual ~CBaseClient();
    /*
     * Connect a client to an address
     * @iparam client: the client to be connected with the address
     * @iparam address: the address to be connected; if not specified,
     *     svc://server_name is used, where server_name is the string passed
     *     when creating CBaseClient
     * @return: the session the client is established with server. To check
     *     the return value, using isValidFdbId();
     *     Note that for "SVC://", isValidFdbId() always return false
     *
     * The supported address format is:
     * tcp://ip address:port number
     * ipc://directory to unix domain socket
     * svc://server name: own server name and get address dynamically
     *     allocated by name server
     */

    FdbSessionId_t connect(const char *url = 0);
    /*
     * Disconnect the client with server.
     * @iparam sid: don't specify for now
     */
    void disconnect(FdbSessionId_t sid = FDB_INVALID_ID);

    bool local()
    {
        return mIsLocal;
    }

    const std::string &getConnectedHost()
    {
        return mConnectedHost;
    }

protected:
    std::string mConnectedHost;
    CClientSocket *doConnect(const char *url);
    void doDisconnect(FdbSessionId_t sid = FDB_INVALID_ID);
    bool requestServiceAddress(const char *server_name);
    void reconnectToNs(bool connect);
    /*
     * Check whether connection is allowed for the host.
     * Warning!!! It is running in the context of FDB_CONTEXT!!!
     */
    virtual bool connectionEnabled(const NFdbBase::FdbMsgAddressList &addr_list)
    {
        return connected() ? false : true;
    }
    
private:
    bool mIsLocal;
    void cbConnect(CBaseWorker *worker, CMethodJob<CBaseClient> *job, CBaseJob::Ptr &ref);
    void cbDisconnect(CBaseWorker *worker, CMethodJob<CBaseClient> *job, CBaseJob::Ptr &ref);

    void local(bool is_local)
    {
        mIsLocal = is_local;
    }
    void updateSecurityLevel(void);

    friend class CFdbContext;
    friend class CConnectClientJob;
    friend class CDisconnectClientJob;
    friend class CClientSocket;
    friend class CIntraNameProxy;
    friend class CHostProxy;
    friend class CNameServer;
};

#endif

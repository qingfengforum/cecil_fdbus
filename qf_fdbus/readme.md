# FDBus 
> what can fdbus do:  
> 1. IPC (interprocess communication)
>> 1.1 request/reply  
>> 1.2 subscrib/broadcast  
>> 1.3 transform [rawbuffer] or [protobuffer]  
>
> how to use
> ```
> mkdir build; cd build
> cmake ..
> make # or make install which will compile and install the targes.
> ```
### client-server request
```c++
/* -- sync invoke --*/
CBaseClient::invoke();
Server::onInvoke();
CBaseMessage::reply();
Client::onReply();

/* -- Async invoke --*/
CBaseClient::invoke();
Server::onInvoke();

CBaseMessage::reply();
Client::onReply();


/* -- invoke without reply --*/
CBaseClient::send();
Server::onInvoke();
```

```c++
/* the payload can be [buffer] or [proto message] */
// [buffer]
void CFdbBaseObject::invoke(FdbMsgCode_t code
                           , const void *buffer
                           , int32_t size
                           , int32_t timeout);
// [proto message]
void CFdbBaseObject::invoke(FdbMsgCode_t code
                           , const CFdbBasePayload &data
                           , int32_t timeout);
```
> client/server send request : --> invoke()  
> client/server receive request : --> onInvoke()  
> client/server reply request : --> msg->reply()

### questions
> 1. do not know how to use the sync invoke  
> 2. do not know how to use onStatus



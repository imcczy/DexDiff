.class public Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonDeserializer;
.super Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;
.source "SourceFile"

.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
  .registers 3
  .prologue
  .line 16
    invoke-direct { p0, p1, p2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V
  .line 17
    return-void
.end method

.method public parser()Ljava/lang/Object;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .catch Ljava/lang/Exception; { :L3 .. :L6 } :L1
  .registers 7
  :L0
  .prologue
  .line 23
    new-instance v0, Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mData:[B
    invoke-direct { v0, v1 }, Ljava/lang/String;-><init>([B)V
  .line 24
    const-string v1, "HttpCaller"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "threadid = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
  .line 25
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/Thread;->getId()J
    move-result-wide v4
    invoke-virtual { v2, v4, v5 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, "; rpc response:  "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 24
    invoke-static { v1, v2 }, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
  .line 28
    new-instance v1, Lorg/json/JSONObject;
    invoke-direct { v1, v0 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
  .line 30
    const-string v0, "resultStatus"
    invoke-virtual { v1, v0 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result v0
  .line 31
    const/16 v2, 1000
    if-eq v0, v2, :L3
  .line 32
    const-string v2, "tips"
    invoke-virtual { v1, v2 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 33
    new-instance v2, Lcom/alipay/zoloz/mobile/a/a/b;
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-direct { v2, v0, v1 }, Lcom/alipay/zoloz/mobile/a/a/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v2
  :L1
  .line 44
    move-exception v0
  .line 45
    new-instance v1, Lcom/alipay/zoloz/mobile/a/a/b;
    const/16 v2, 10
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "response  ="
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    new-instance v4, Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mData:[B
    invoke-direct { v4, v5 }, Ljava/lang/String;-><init>([B)V
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, ":"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    if-nez v3, :L7
    const-string v0, ""
  :L2
  .line 47
    invoke-direct { v1, v2, v0 }, Lcom/alipay/zoloz/mobile/a/a/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V
    throw v1
  :L3
  .line 37
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mType:Ljava/lang/reflect/Type;
    const-class v2, Ljava/lang/String;
    if-ne v0, v2, :L5
  .line 38
    const-string v0, "result"
    invoke-virtual { v1, v0 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  :L4
  .line 43
    return-object v0
  :L5
  .line 40
    const-string v0, "result"
    invoke-virtual { v1, v0 }, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mType:Ljava/lang/reflect/Type;
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/b/a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
  :L6
    move-result-object v0
    goto :L4
  :L7
  .line 47
    invoke-virtual { v0 }, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v0
    goto :L2
.end method

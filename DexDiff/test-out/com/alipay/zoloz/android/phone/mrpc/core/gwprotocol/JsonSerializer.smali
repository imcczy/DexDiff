.class public Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;
.super Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractSerializer;
.source "SourceFile"

.field public final static VERSION:Ljava/lang/String; = "1.0.0"

.field private a:I

.field private b:Ljava/lang/Object;

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
  .registers 4
  .prologue
  .line 36
    invoke-direct { p0, p2, p3 }, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
  .line 37
    iput p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->a:I
  .line 38
    return-void
.end method

.method public getId()I
  .registers 2
  .prologue
  .line 82
    iget v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->a:I
    return v0
.end method

.method public packet()[B
  .catch Ljava/lang/Exception; { :L0 .. :L4 } :L5
  .registers 6
  :L0
  .prologue
  .line 48
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
  .line 50
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->b:Ljava/lang/Object;
    if-eqz v0, :L1
  .line 51
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;
    const-string v2, "extParam"
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->b:Ljava/lang/Object;
  .line 52
    invoke-static { v3 }, Lcom/alipay/zoloz/b/a;->a(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-direct { v0, v2, v3 }, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
  .line 53
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
  .line 56
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;
    const-string v2, "operationType"
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mOperationType:Ljava/lang/String;
    invoke-direct { v0, v2, v3 }, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
  .line 57
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 58
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;
    const-string v2, "id"
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    iget v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->a:I
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, ""
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-direct { v0, v2, v3 }, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
  .line 59
    invoke-virtual { v1, v0 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 60
    const-string v0, "JsonSerializer"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "mParams is:"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    iget-object v3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mParams:Ljava/lang/Object;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v0, v2 }, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
  .line 61
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;
    const-string v3, "requestData"
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mParams:Ljava/lang/Object;
    if-nez v0, :L3
    const-string v0, "[]"
  :L2
  .line 62
    invoke-direct { v2, v3, v0 }, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
  .line 64
    invoke-virtual { v1, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 65
    const-string v0, "utf-8"
    invoke-static { v1, v0 }, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 66
    const-string v1, "JsonSerializer"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "request = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v1, v2 }, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
  .line 67
    invoke-virtual { v0 }, Ljava/lang/String;->getBytes()[B
    move-result-object v0
    return-object v0
  :L3
  .line 61
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mParams:Ljava/lang/Object;
  .line 62
    invoke-static { v0 }, Lcom/alipay/zoloz/b/a;->a(Ljava/lang/Object;)Ljava/lang/String;
  :L4
    move-result-object v0
    goto :L2
  :L5
  .line 68
    move-exception v0
    move-object v1, v0
  .line 69
    new-instance v2, Lcom/alipay/zoloz/mobile/a/a/b;
    const/16 v0, 9
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "request  ="
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->mParams:Ljava/lang/Object;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v4, ":"
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    if-nez v0, :L7
    const-string v0, ""
  :L6
  .line 71
    invoke-direct { v2, v3, v0, v1 }, Lcom/alipay/zoloz/mobile/a/a/b;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    throw v2
  :L7
    invoke-virtual { v1 }, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v0
    goto :L6
.end method

.method public setExtParam(Ljava/lang/Object;)V
  .registers 2
  .prologue
  .line 42
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->b:Ljava/lang/Object;
  .line 43
    return-void
.end method

.method public setId(I)V
  .registers 2
  .prologue
  .line 91
    iput p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/JsonSerializer;->a:I
  .line 92
    return-void
.end method

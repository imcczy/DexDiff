.class public Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;
.super Ljava/lang/Object;
.implements Ljava/io/Serializable;
.source "SourceFile"

.field private final static serialVersionUID:J = -6098125857367743614L

.field private headers:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 13
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 19
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;->headers:Ljava/util/Map;
    return-void
.end method

.method public getHead(Ljava/lang/String;)Ljava/lang/String;
  .registers 3
  .prologue
  .line 31
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;->headers:Ljava/util/Map;
    invoke-interface { v0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 2
  .prologue
  .line 23
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;->headers:Ljava/util/Map;
    return-object v0
.end method

.method public setHead(Ljava/lang/String;Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 34
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;->headers:Ljava/util/Map;
    invoke-interface { v0, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 35
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map",
      "<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 27
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;->headers:Ljava/util/Map;
  .line 28
    return-void
.end method

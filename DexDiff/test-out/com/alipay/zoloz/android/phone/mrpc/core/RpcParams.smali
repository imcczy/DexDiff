.class public Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List",
      "<",
      "Lorg/apache/http/Header;",
      ">;"
    }
  .end annotation
.end field

.field private c:Z

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 11
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public getGwUrl()Ljava/lang/String;
  .registers 2
  .prologue
  .line 20
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;->a:Ljava/lang/String;
    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List",
      "<",
      "Lorg/apache/http/Header;",
      ">;"
    }
  .end annotation
  .registers 2
  .prologue
  .line 28
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;->b:Ljava/util/List;
    return-object v0
.end method

.method public isGzip()Z
  .registers 2
  .prologue
  .line 36
    iget-boolean v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;->c:Z
    return v0
.end method

.method public setGwUrl(Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 24
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;->a:Ljava/lang/String;
  .line 25
    return-void
.end method

.method public setGzip(Z)V
  .registers 2
  .prologue
  .line 40
    iput-boolean p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;->c:Z
  .line 41
    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List",
      "<",
      "Lorg/apache/http/Header;",
      ">;)V"
    }
  .end annotation
  .registers 2
  .prologue
  .line 32
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/RpcParams;->b:Ljava/util/List;
  .line 33
    return-void
.end method

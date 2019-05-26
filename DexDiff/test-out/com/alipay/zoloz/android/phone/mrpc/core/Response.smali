.class public Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
.super Ljava/lang/Object;
.source "SourceFile"

.field protected mContentType:Ljava/lang/String;

.field protected mResData:[B

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 9
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public getContentType()Ljava/lang/String;
  .registers 2
  .prologue
  .line 43
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;->mContentType:Ljava/lang/String;
    return-object v0
.end method

.method public getResData()[B
  .registers 2
  .prologue
  .line 25
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;->mResData:[B
    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 52
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;->mContentType:Ljava/lang/String;
  .line 53
    return-void
.end method

.method public setResData([B)V
  .registers 2
  .prologue
  .line 34
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;->mResData:[B
  .line 35
    return-void
.end method

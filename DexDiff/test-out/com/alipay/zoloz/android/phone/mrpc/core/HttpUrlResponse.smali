.class public Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;
.super Lcom/alipay/zoloz/android/phone/mrpc/core/Response;
.source "SourceFile"

.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;

.method public constructor <init>(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;ILjava/lang/String;[B)V
  .registers 5
  .prologue
  .line 33
    invoke-direct { p0 }, Lcom/alipay/zoloz/android/phone/mrpc/core/Response;-><init>()V
  .line 34
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->f:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;
  .line 35
    iput p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->a:I
  .line 36
    iput-object p3, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->b:Ljava/lang/String;
  .line 37
    iput-object p4, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->mResData:[B
  .line 38
    return-void
.end method

.method public getCharset()Ljava/lang/String;
  .registers 2
  .prologue
  .line 64
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->e:Ljava/lang/String;
    return-object v0
.end method

.method public getCode()I
  .registers 2
  .prologue
  .line 46
    iget v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->a:I
    return v0
.end method

.method public getCreateTime()J
  .registers 3
  .prologue
  .line 82
    iget-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->c:J
    return-wide v0
.end method

.method public getHeader()Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;
  .registers 2
  .prologue
  .line 113
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->f:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;
    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
  .registers 2
  .prologue
  .line 55
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->b:Ljava/lang/String;
    return-object v0
.end method

.method public getPeriod()J
  .registers 3
  .prologue
  .line 100
    iget-wide v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->d:J
    return-wide v0
.end method

.method public setCharset(Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 73
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->e:Ljava/lang/String;
  .line 74
    return-void
.end method

.method public setCreateTime(J)V
  .registers 4
  .prologue
  .line 91
    iput-wide p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->c:J
  .line 92
    return-void
.end method

.method public setHeader(Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;)V
  .registers 2
  .prologue
  .line 117
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->f:Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlHeader;
  .line 118
    return-void
.end method

.method public setPeriod(J)V
  .registers 4
  .prologue
  .line 109
    iput-wide p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpUrlResponse;->d:J
  .line 110
    return-void
.end method

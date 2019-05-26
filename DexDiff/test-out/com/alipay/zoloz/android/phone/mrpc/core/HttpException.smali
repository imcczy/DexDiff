.class public Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;
.super Ljava/lang/Exception;
.source "SourceFile"

.field public final static NETWORK_AUTH_ERROR:I = 8

.field public final static NETWORK_CONNECTION_EXCEPTION:I = 3

.field public final static NETWORK_DNS_ERROR:I = 9

.field public final static NETWORK_IO_EXCEPTION:I = 6

.field public final static NETWORK_SCHEDULE_ERROR:I = 7

.field public final static NETWORK_SERVER_EXCEPTION:I = 5

.field public final static NETWORK_SOCKET_EXCEPTION:I = 4

.field public final static NETWORK_SSL_EXCEPTION:I = 2

.field public final static NETWORK_UNAVAILABLE:I = 1

.field public final static NETWORK_UNKNOWN_ERROR:I = 0

.field private final static serialVersionUID:J = -6320569206365033676L

.field private mCode:I

.field private mMsg:Ljava/lang/String;

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 77
    invoke-static { p1, p2 }, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
  .line 78
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->mCode:I
  .line 79
    iput-object p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->mMsg:Ljava/lang/String;
  .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
  .registers 3
  .prologue
  .line 67
    invoke-direct { p0, p1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
  .line 68
    const/4 v0, 0
    iput v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->mCode:I
  .line 69
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->mMsg:Ljava/lang/String;
  .line 70
    return-void
.end method

.method private static a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
  .registers 5
  .prologue
  .line 101
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 102
    const-string v1, "Http Transport error"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 103
    if-eqz p0, :L0
  .line 104
    const-string v1, "["
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "]"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L0
  .line 106
    const-string v1, " : "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 107
    if-eqz p1, :L1
  .line 108
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
  .line 110
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public getCode()I
  .registers 2
  .prologue
  .line 88
    iget v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->mCode:I
    return v0
.end method

.method public getMsg()Ljava/lang/String;
  .registers 2
  .prologue
  .line 97
    iget-object v0, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/HttpException;->mMsg:Ljava/lang/String;
    return-object v0
.end method

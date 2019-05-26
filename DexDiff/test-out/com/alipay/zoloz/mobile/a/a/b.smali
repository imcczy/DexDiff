.class public Lcom/alipay/zoloz/mobile/a/a/b;
.super Ljava/lang/RuntimeException;
.source "SourceFile"

.field private final static serialVersionUID:J = -2875437994101380406L

.field private mCode:I

.field private mMsg:Ljava/lang/String;

.field private mOperationType:Ljava/lang/String;

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
  .registers 4
  .prologue
  .line 24
    invoke-static { p1, p2 }, Lcom/alipay/zoloz/mobile/a/a/b;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
  .line 25
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mCode:I
  .line 26
    iput-object p2, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mMsg:Ljava/lang/String;
  .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
  .registers 5
  .prologue
  .line 35
    invoke-static { p1, p2 }, Lcom/alipay/zoloz/mobile/a/a/b;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-direct { p0, v0, p3 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
  .line 36
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mCode:I
  .line 37
    iput-object p2, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mMsg:Ljava/lang/String;
  .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
  .registers 4
  .prologue
  .line 30
    invoke-direct { p0, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
  .line 31
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    iput v0, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mCode:I
  .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
  .registers 3
  .prologue
  .line 41
    invoke-direct { p0, p1 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
  .line 42
    const/4 v0, 0
    iput v0, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mCode:I
  .line 43
    iput-object p1, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mMsg:Ljava/lang/String;
  .line 44
    return-void
.end method

.method protected static format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
  .registers 5
  .prologue
  .line 73
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 74
    const-string v1, "RPCException: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 75
    if-eqz p0, :L0
  .line 76
    const-string v1, "["
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "]"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L0
  .line 78
    const-string v1, " : "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 79
    if-eqz p1, :L1
  .line 80
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
  .line 82
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public getCode()I
  .registers 2
  .prologue
  .line 60
    iget v0, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mCode:I
    return v0
.end method

.method public getMsg()Ljava/lang/String;
  .registers 2
  .prologue
  .line 69
    iget-object v0, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mMsg:Ljava/lang/String;
    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
  .registers 2
  .prologue
  .line 47
    iget-object v0, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mOperationType:Ljava/lang/String;
    return-object v0
.end method

.method public setOperationType(Ljava/lang/String;)V
  .registers 2
  .prologue
  .line 51
    iput-object p1, p0, Lcom/alipay/zoloz/mobile/a/a/b;->mOperationType:Ljava/lang/String;
  .line 52
    return-void
.end method

.class public Lcom/alipay/zoloz/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private a:Z

.field private b:J

.field private c:I

.method public constructor <init>(ZJI)V
  .registers 7
  .prologue
  .line 29
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 11
    const/4 v0, 0
    iput-boolean v0, p0, Lcom/alipay/zoloz/a/a;->a:Z
  .line 30
    iput-boolean p1, p0, Lcom/alipay/zoloz/a/a;->a:Z
  .line 31
    iput-wide p2, p0, Lcom/alipay/zoloz/a/a;->b:J
  .line 32
    iput p4, p0, Lcom/alipay/zoloz/a/a;->c:I
  .line 33
    return-void
.end method

.method public a()Z
  .registers 2
  .prologue
  .line 36
    iget-boolean v0, p0, Lcom/alipay/zoloz/a/a;->a:Z
    return v0
.end method

.method public b()J
  .registers 3
  .prologue
  .line 40
    iget-wide v0, p0, Lcom/alipay/zoloz/a/a;->b:J
    return-wide v0
.end method

.method public c()I
  .registers 2
  .prologue
  .line 44
    iget v0, p0, Lcom/alipay/zoloz/a/a;->c:I
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 5
  .prologue
  .line 49
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "IspResult{needSet="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-boolean v1, p0, Lcom/alipay/zoloz/a/a;->a:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", exposureTime="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-wide v2, p0, Lcom/alipay/zoloz/a/a;->b:J
    invoke-virtual { v0, v2, v3 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", iso="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/a/a;->c:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

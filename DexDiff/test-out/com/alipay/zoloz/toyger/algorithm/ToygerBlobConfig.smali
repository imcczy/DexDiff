.class public abstract Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;
.super Ljava/lang/Object;
.source "SourceFile"

.field public pubkey:Ljava/lang/String;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 7
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public abstract getCompressRate()F
.end method

.method public getDesiredWidth()Ljava/lang/Integer;
  .registers 2
  .prologue
  .line 13
    const/4 v0, -1
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    return-object v0
.end method

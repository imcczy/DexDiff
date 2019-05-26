.class public abstract Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractSerializer;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/Serializer;
.source "SourceFile"

.field protected mOperationType:Ljava/lang/String;

.field protected mParams:Ljava/lang/Object;

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
  .registers 3
  .prologue
  .line 24
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 25
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractSerializer;->mOperationType:Ljava/lang/String;
  .line 26
    iput-object p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractSerializer;->mParams:Ljava/lang/Object;
  .line 27
    return-void
.end method

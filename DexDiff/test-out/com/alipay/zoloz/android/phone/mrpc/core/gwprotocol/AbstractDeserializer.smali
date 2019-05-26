.class public abstract Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;
.super Ljava/lang/Object;
.implements Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/Deserializer;
.source "SourceFile"

.field protected mData:[B

.field protected mType:Ljava/lang/reflect/Type;

.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
  .registers 3
  .prologue
  .line 22
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 23
    iput-object p1, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;->mType:Ljava/lang/reflect/Type;
  .line 24
    iput-object p2, p0, Lcom/alipay/zoloz/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;->mData:[B
  .line 25
    return-void
.end method

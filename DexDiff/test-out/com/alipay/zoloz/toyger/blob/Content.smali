.class public Lcom/alipay/zoloz/toyger/blob/Content;
.super Ljava/lang/Object;
.source "SourceFile"

.field public blob:Lcom/alipay/zoloz/toyger/blob/Blob;

.field public meta:Lcom/alipay/zoloz/toyger/blob/Meta;

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 10
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/blob/Meta;Lcom/alipay/zoloz/toyger/blob/Blob;)V
  .registers 3
  .prologue
  .line 11
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 12
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/Content;->meta:Lcom/alipay/zoloz/toyger/blob/Meta;
  .line 13
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/blob/Content;->blob:Lcom/alipay/zoloz/toyger/blob/Blob;
  .line 14
    return-void
.end method

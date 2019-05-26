.class public final Lcom/alipay/zoloz/toyger/R$bool;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/toyger/R;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 25
  name = "bool"
.end annotation

.field public static bool_name:I

.method static constructor <clinit>()V
  .registers 1
  .prologue
  .line 56
    sget v0, Lcom/alipay/zoloz/cloud/R$bool;->bool_name:I
    sput v0, Lcom/alipay/zoloz/toyger/R$bool;->bool_name:I
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 55
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

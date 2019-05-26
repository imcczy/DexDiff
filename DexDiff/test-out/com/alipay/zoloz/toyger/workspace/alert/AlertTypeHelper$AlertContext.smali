.class public Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1
  name = "AlertContext"
.end annotation

.field public msg1:Ljava/lang/String;

.field public msg2:Ljava/lang/String;

.field public negative:Ljava/lang/String;

.field public positive:Ljava/lang/String;

.field public returnCode:I

.field public scene:Ljava/lang/String;

.field public showIcon:Z

.field public tag:Lcom/alipay/zoloz/toyger/util/DialogTypeIndex;

.field final synthetic this$0:Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;

.field public title:Ljava/lang/String;

.method public constructor <init>(Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;)V
  .registers 2
  .prologue
  .line 187
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper$AlertContext;->this$0:Lcom/alipay/zoloz/toyger/workspace/alert/AlertTypeHelper;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

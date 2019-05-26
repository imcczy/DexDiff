.class Lcom/alipay/zoloz/toyger/upload/a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.field final synthetic a:Lcom/alipay/zoloz/toyger/upload/NineShootManager;

.method constructor <init>(Lcom/alipay/zoloz/toyger/upload/NineShootManager;)V
  .registers 2
  .prologue
  .line 39
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/upload/a;->a:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .prologue
  .line 42
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/upload/a;->a:Lcom/alipay/zoloz/toyger/upload/NineShootManager;
    const/4 v1, 0
    invoke-static { v0, v1 }, Lcom/alipay/zoloz/toyger/upload/NineShootManager;->access$002(Lcom/alipay/zoloz/toyger/upload/NineShootManager;Z)Z
  .line 43
    return-void
.end method

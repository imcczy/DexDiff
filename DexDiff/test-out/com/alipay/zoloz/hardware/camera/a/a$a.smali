.class public Lcom/alipay/zoloz/hardware/camera/a/a$a;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/alipay/zoloz/hardware/camera/a/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/Comparator",
    "<",
    "Landroid/hardware/Camera$Size;",
    ">;"
  }
.end annotation

.field final synthetic a:Lcom/alipay/zoloz/hardware/camera/a/a;

.method public constructor <init>(Lcom/alipay/zoloz/hardware/camera/a/a;)V
  .registers 2
  .prologue
  .line 140
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/a/a$a;->a:Lcom/alipay/zoloz/hardware/camera/a/a;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
  .registers 5
  .prologue
  .line 143
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I
    iget v1, p2, Landroid/hardware/Camera$Size;->width:I
    if-ne v0, v1, :L1
  .line 144
    const/4 v0, 0
  :L0
  .line 148
    return v0
  :L1
  .line 145
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I
    iget v1, p2, Landroid/hardware/Camera$Size;->width:I
    if-le v0, v1, :L2
  .line 146
    const/4 v0, 1
    goto :L0
  :L2
  .line 148
    const/4 v0, -1
    goto :L0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
  .registers 4
  .prologue
  .line 140
    check-cast p1, Landroid/hardware/Camera$Size;
    check-cast p2, Landroid/hardware/Camera$Size;
    invoke-virtual { p0, p1, p2 }, Lcom/alipay/zoloz/hardware/camera/a/a$a;->a(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    move-result v0
    return v0
.end method

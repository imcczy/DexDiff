.class Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;
.super Ljava/lang/Object;
.implements Landroid/hardware/Camera$PreviewCallback;
.source "SourceFile"

.field final synthetic this$0:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;

.method constructor <init>(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)V
  .registers 2
  .prologue
  .line 286
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;->this$0:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
  .registers 14
  .prologue
    const/4 v4, 0
  .line 289
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;->this$0:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    invoke-static { v0 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->access$400(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)Lcom/alipay/zoloz/hardware/camera/b;
    move-result-object v10
    new-instance v0, Lcom/alipay/zoloz/hardware/camera/a;
    invoke-static { p1 }, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    move-result-object v1
    iget-object v2, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;->this$0:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    invoke-static { v2 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->access$000(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
    move-result v2
    iget-object v3, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;->this$0:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    invoke-static { v3 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->access$100(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
    move-result v3
    const/4 v5, 0
    iget-object v6, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;->this$0:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
  .line 290
    invoke-static { v6 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->access$200(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
    move-result v8
    iget-object v6, p0, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl$1;->this$0:Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;
    invoke-static { v6 }, Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;->access$300(Lcom/alipay/zoloz/hardware/camera/impl/AndroidImpl;)I
    move-result v9
    move v6, v4
    move v7, v4
    invoke-direct/range { v0 .. v9 }, Lcom/alipay/zoloz/hardware/camera/a;-><init>(Ljava/nio/ByteBuffer;IIILjava/nio/ShortBuffer;IIII)V
  .line 289
    invoke-interface { v10, v0 }, Lcom/alipay/zoloz/hardware/camera/b;->onPreviewFrame(Lcom/alipay/zoloz/hardware/camera/a;)V
  .line 291
    return-void
.end method

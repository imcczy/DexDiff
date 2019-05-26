.class public Lcom/alipay/zoloz/toyger/util/Avatar;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 13
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static genAvatar(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)Ljava/lang/String;
  .registers 4
  .prologue
  .line 23
    const/high16 v0, 16256
    invoke-static { p0, v0 }, Lcom/alipay/zoloz/toyger/workspace/task/ToygerBaseTask;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/mobile/security/bio/utils/BitmapHelper;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    move-result-object v0
  .line 24
    if-nez v0, :L1
  .line 25
    const-string v0, ""
  :L0
  .line 27
    return-object v0
  :L1
    const/16 v1, 8
    invoke-static { v0, v1 }, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    move-result-object v0
    goto :L0
.end method

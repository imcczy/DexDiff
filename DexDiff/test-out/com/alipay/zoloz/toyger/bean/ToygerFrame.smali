.class public Lcom/alipay/zoloz/toyger/bean/ToygerFrame;
.super Ljava/lang/Object;
.source "SourceFile"

.field public bestBitmap:Landroid/graphics/Bitmap;

.field public error:Lcom/alipay/zoloz/toyger/bean/ToygerError;

.field public frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;

.field public tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;

.field public tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;

.field public tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

.field public uploadContent:Lcom/alipay/zoloz/toyger/upload/UploadContent;

.method public constructor <init>()V
  .registers 2
  .prologue
  .line 12
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 14
    sget-object v0, Lcom/alipay/zoloz/toyger/bean/FrameType;->INIT:Lcom/alipay/zoloz/toyger/bean/FrameType;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
  .line 16
    sget-object v0, Lcom/alipay/zoloz/toyger/bean/ToygerError;->NORMAL:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->error:Lcom/alipay/zoloz/toyger/bean/ToygerError;
  .line 18
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
  .line 20
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
  .line 22
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
    invoke-direct { v0 }, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;-><init>()V
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 36
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "ToygerFrame{frameType="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->frameType:Lcom/alipay/zoloz/toyger/bean/FrameType;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", error="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->error:Lcom/alipay/zoloz/toyger/bean/ToygerError;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", tgFrame="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFrame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;
    if-eqz v0, :L4
    const-string v0, "***"
  :L0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", tgFaceState="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;
    if-eqz v0, :L5
    const-string v0, "***"
  :L1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", tgFaceAttr="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;
    if-eqz v0, :L6
    const-string v0, "***"
  :L2
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", uploadContent="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->uploadContent:Lcom/alipay/zoloz/toyger/upload/UploadContent;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", bestBitmap="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/bean/ToygerFrame;->bestBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :L7
    const-string v0, "***"
  :L3
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L4
    const-string v0, "null"
    goto :L0
  :L5
    const-string v0, "null"
    goto :L1
  :L6
    const-string v0, "null"
    goto :L2
  :L7
    const-string v0, "null"
    goto :L3
.end method

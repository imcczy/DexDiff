.class public Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;
.super Ljava/lang/Object;
.source "SourceFile"

.field public data:[S

.field public height:I

.field public rotation:I

.field public shortBuffer:Ljava/nio/ShortBuffer;

.field public width:I

.method public constructor <init>()V
  .registers 1
  .prologue
  .line 42
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 43
    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
  .registers 3
  .prologue
  .line 59
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 60
    if-eqz p1, :L1
  .line 61
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
    if-eqz v0, :L0
  .line 62
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
    invoke-virtual { v0 }, [S->clone()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [S
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
  :L0
  .line 64
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I
  .line 65
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I
  .line 66
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I
  .line 67
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;
  :L1
  .line 69
    return-void
.end method

.method public constructor <init>(Ljava/nio/ShortBuffer;III)V
  .registers 5
  .prologue
  .line 52
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 53
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;
  .line 54
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I
  .line 55
    iput p3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I
  .line 56
    iput p4, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I
  .line 57
    return-void
.end method

.method public constructor <init>([SIII)V
  .registers 5
  .prologue
  .line 45
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 46
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
  .line 47
    iput p2, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I
  .line 48
    iput p3, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I
  .line 49
    iput p4, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I
  .line 50
    return-void
.end method

.method public assign(Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)V
  .registers 4
  .prologue
  .line 72
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I
  .line 73
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I
  .line 74
    iget v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I
    iput v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I
  .line 77
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
    if-eqz v0, :L1
  .line 78
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
    array-length v1, v1
    invoke-static { v0, v1 }, Ljava/util/Arrays;->copyOf([SI)[S
    move-result-object v0
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
  :L0
  .line 85
    return-void
  :L1
  .line 81
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;
    if-eqz v0, :L0
  .line 82
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;
    invoke-virtual { v0 }, Ljava/nio/ShortBuffer;->remaining()I
    move-result v0
    new-array v0, v0, [S
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
  .line 83
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
    invoke-virtual { v0, v1 }, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;
    goto :L0
.end method

.method public recycle()V
  .registers 2
  .prologue
    const/4 v0, 0
  .line 88
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->data:[S
  .line 89
    iput-object v0, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->shortBuffer:Ljava/nio/ShortBuffer;
  .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .prologue
  .line 94
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "TGDepthFrame{data=***, width="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->width:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", height="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->height:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ", rotation="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;->rotation:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
